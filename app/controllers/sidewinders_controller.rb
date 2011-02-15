class SidewindersController < ApplicationController
  
  ############################
  # this is the default action
  ############################
  def index
    @title = 'RMSidewinders v2.0'
    @css = 'sidewinder.css'
    @next_event = Event.find_next_event
    @utc_date = Event.next_utc_date
  end
  
  ##############################
  # actions for main navigation
  ##############################
  def flagging
    @title = 'Flags and their meaning'
    @css = 'flags.css'
  end
  
  # an action for the comm
  def comm
    @title = 'Communication techniques'
    @css = 'comm.css'
  end
  
  def coverage
    @title = 'Track Coverage'
    @css = 'coverage.css'
  end
  
  def signals
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def media
    @title = 'Media'
    @css = 'carbon.css'
  end

  def about
    @title = 'About the RMSidewinders'
    @css = 'green.css'
  end
  
  def schedule
    @title = 'Let''s Go Racing!'
    @css = 'green.css'
    @events = Event.find_all_events
    @next_event = Event.find_next_event
    @utc_date = Event.next_utc_date
  end
  
  def organize
    @title = 'Event Organization'
    @css = 'brown.css'
  end
  
  def links
    @title = 'Club Links'
    @css = 'blue.css'
  end
  
  def advance
    @title = 'Licensing'
    @css = 'carbon.css'
  end
  
  #################
  # flags actions
  #################
  
  def green
    @title = 'Green Flag'
    @css = 'flags.css'
  end

  def yellow
    @title = 'Yellow Flag'
    @css = 'flags.css'
  end

  def surface
    @title = 'Surface Flag'
    @css = 'flags.css'
  end

  def meatball
    @title = 'Mechanical Problem Flag'
    @css = 'flags.css'
  end

  def passing
    @title = 'Passing Flag'
    @css = 'flags.css'
  end
  
  def behavior
    @title = 'Bad Behavior Flag'
    @css = 'flags.css'
  end
  
  def red
    @title = 'Stop NOW Flag'
    @css = 'flags.css'
  end
  
  def white
    @title = 'Slow vehicle Flag'
    @css = 'flags.css'
  end
  
  def checkered
    @title = 'Session Ended Flag'
    @css = 'flags.css'
  end
  
  ###################
  # coverage actions
  ###################
  def hpr
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  def ppir
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  def lajunta
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  def pmp
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  ###################
  # signal actions
  ###################
  def sig_safetycomm
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_captflagger
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_standing_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_waving_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_dbl_standing_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_surface
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_white
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_numbers
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_colors
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_general
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def images
  end
  
  def weather
    @title = 'Weather'
    @css = 'red.css'
  end

end
