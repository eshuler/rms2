class SidewindersController < ApplicationController
  
  ############################
  # this is the default action
  ############################
  def index
    @title = 'RMSidewinders v2.0'
    @css = 'sidewinder.css'
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
  
  def about
    @title = 'About the RMSidewinders'
    @css = 'green.css'
  end
  
  def schedule
    @title = 'Let''s Go Racing!'
    @css = 'green.css'
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
  def safetycomm
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def captflagger
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def numbersignals
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def colorsignals
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def generalsignals
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
end
