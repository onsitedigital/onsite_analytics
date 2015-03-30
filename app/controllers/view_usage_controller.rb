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
    
    
    site = Site.all
    kiosk = Kiosk.all
    
    total_mall_counts = []
    per_mall_counts = 0
    for sites in site
      
      per_mall = kiosk.where(:group_id => sites.id)
      
 
      for malls in per_mall
 
         per_mall_counts = per_mall_counts + logs.where(:kiosk_id => malls.id).count
         puts logs.where(:kiosk_id => malls.id).count
      end
      puts "Counting.."
      puts per_mall_counts
      total_mall_counts << per_mall_counts
    end   
    @mallcount = per_mall.count   
    @totalmalls = total_mall_counts    
    @wcount = logs.count
  end
  
  def create
    
    
  end

end
