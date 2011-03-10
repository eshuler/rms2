class Event < ActiveRecord::Base
  
  def self.find_all_events
    find(:all, :order =>"evdate")
  end
  
  def self.find_next_event
    today = DateTime.now
    #reformat today for comparison
    ftoday = today.strftime("%Y-%m-%d")
    find(:first, :order=>"evdate", :conditions => ['"evdate" > ?', ftoday ])
  end
  
  #pass an event record , receive a UTC date ["YYYY, M (zero based, jan = 0), dd, hh, mm, ss"]
  def self.next_utc_date
    today = DateTime.now
    #reformat today for comparison
    ftoday = today.strftime("%Y-%m-%d")
    theevent = find(:first, :order=>"evdate", :conditions => ['"evdate" > ?', ftoday ])
    
    y = theevent.evdate.strftime("%Y").to_i
    m = theevent.evdate.strftime("%m").to_i
    d = theevent.evdate.strftime("%d").to_i
    
    #construct the utc date format
    #pass it back
    puts d
    d = y.to_s + "," + (m -1).to_s + "," + d.to_s + ",13,00,00"
  end
    
    validates_presence_of :evdate, :evname, :evhostreg, :evtrack
    validates_uniqueness_of :evname
    
end
