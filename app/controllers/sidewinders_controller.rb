class SidewindersController < ApplicationController
  
  caches_page :media, :about, :organize, :links, :advance,
  :flagging, :flag_surface, :flag_white, :flag_meatball, :flag_black, :flag_green, :flag_red, :flag_checkered, :flag_passing,
  :track_hpr, :track_pmp, :track_ppir, :track_lajunta,
  :comm
  
  ############################
  # this is the default action
  ############################
  def index
    @title = 'RMSidewinders v2.0'
    @css = 'sidewinder.css'
    @next_event = Event.find_next_event
    @utc_date = Event.next_utc_date
    
    case @next_event.evtrack
    when "HPR"
      @weather_page = "hpr_weather.html" 
    when "PPIR"
      @weather_page = "ppir_weather.html" 
    when "LaJunta"
      @weather_page = "laj_weather.html" 
    when "PMP"
      @weather_page = "pmp_weather.html"
    when "MPH"
      @weather_page = "mph_weather.html"
    when "Sandia"
      @weather_page = "sandia_weather.html"
    when "MMP"
      @weather_page = "mmp_weather.html"
    when "Road America"
      @weather_page = "roadamerica_weather.html"
    else
      @weather_page = "hpr_weather.html"
    end
  end
  
  ##############################
  # actions for main navigation
  ##############################
  def flagging
    @title = 'Flags and their meaning'
    @css = 'flags.css'
  end
  
  # an action for communication
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
  
  def flag_green
    @title = 'Green Flag'
    @css = 'flags.css'
  end

  def flag_yellow
    @title = 'Yellow Flag'
    @css = 'flags.css'
  end

  def flag_surface
    @title = 'Surface Flag'
    @css = 'flags.css'
  end

  def flag_meatball
    @title = 'Mechanical Problem Flag'
    @css = 'flags.css'
  end

  def flag_passing
    @title = 'Passing Flag'
    @css = 'flags.css'
  end
  
  def flag_black
    @title = 'Bad Behavior Flag'
    @css = 'flags.css'
  end
  
  def flag_red
    @title = 'Stop NOW Flag'
    @css = 'flags.css'
  end
  
  def flag_white
    @title = 'Slow vehicle Flag'
    @css = 'flags.css'
  end
  
  def flag_checkered
    @title = 'Session Ended Flag'
    @css = 'flags.css'
  end
  
  #########################
  # track coverage actions
  #########################
  def track_hpr
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  def track_ppir
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  def track_lajunta
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  def track_pmp
    @title = 'High Plains Raceway'
    @css = 'coverage.css'
  end
  
  ######################
  # hand signal actions
  ######################
  def sig_safetycomm
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_ambulance
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_flat_tow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_tilt_bed
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_send_help
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_send_now
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_send_lots_of_help
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_fire
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_sc_wrecker
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  #------------------------
  def sig_captflagger
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_cf_standing_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_cf_waving_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_cf_dbl_standing_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_cf_surface
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
    
  def sig_cf_white
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  #------------------------
  def sig_numbers
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_one
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_two
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_three
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_four
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_five
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_six
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_seven
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_eight
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_nine
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_zero
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_num_request
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  #-------------------------
  def sig_colors
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_red
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_white
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_brown
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_yellow
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_blue
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_black
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_green
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_color_request
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  #--------------------------
  def sig_general
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_gen_headphones
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_gen_check
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_flatwheel
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_dragging
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_smoking
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_gen_carsoncourse
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_gen_checkered
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  def sig_gen_front
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_rear
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_lastcar
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_halfway
    @title = 'Hand Signals'
    @css = 'signals.css'
  end

  def sig_gen_more
    @title = 'Hand Signals'
    @css = 'signals.css'
  end
  
  #########################
  # other actions
  #########################
  
  def weather
    @title = 'Weather'
    @css = 'red.css'
  end

end
