require 'rubygems'  
require 'active_record'  

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
    
    @wlogs = WidgetLog.limit(100).all
    @wcount = WidgetLog.count
  end
  
  def create
    
    
  end

end
