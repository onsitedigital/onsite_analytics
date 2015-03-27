require 'rubygems'  
require 'active_record'  
require 'date'

ActiveRecord::Base.establish_connection(
:adapter => "mysql2",  
:host => "localhost",  
:database => "ayala",
:username => "root",
:password => "Snorlax22!",
:port => "3307" 

)  
class ViewUsageController < ApplicationController
  def index

    
    
  end
  
  def show
    from_date = Date.parse('July 17, 2013')
    to_date = Date.parse('July 18, 2013')
    logs = WidgetLog.where(:action =>'search', :date_stamp => from_date.beginning_of_day..to_date.end_of_day)
    
    kiosks = []
    for kiosk in logs
      kiosks << kiosk   
    end
    @wlogs = kiosks
    @wcount = logs.count
  end
  
  def create
    
    
  end

end
