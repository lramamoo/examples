class Clock < ActiveRecord::Base
  attr_accessible :minutes_difference, :name

  def self.hour
    Time.zone.now.in_time_zone(5.5).hour
  end

  def self.minutes
    Time.zone.now.in_time_zone(5.5).min
  end
  
  def self.seconds
    Time.zone.now.in_time_zone(5.5).sec
  end

  def self.display(minutes_difference)
    hour = Time.zone.now.in_time_zone(5.5).hour + (Time.zone.now.in_time_zone(5.5).min + minutes_difference) / 60
    min =  (Time.zone.now.in_time_zone(5.5).min + minutes_difference) % 60
    sec = Time.zone.now.in_time_zone(5.5).sec
    hour.to_s + ' : ' + min.to_s + ' : ' + sec.to_s
  end
end
