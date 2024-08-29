class Public::HomesController < ApplicationController
  
  helper_method :google_maps_api_key
    
  def top
   @castles = Castle.all
  end

  def about
  
  end
  
  
  private 
  
  def google_maps_api_key
    ENV['GOOGLE_MAPS_API_KEY']
  end
end
