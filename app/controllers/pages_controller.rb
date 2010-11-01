class PagesController < ApplicationController  
  skip_before_filter :authenticate_user!
  
  def home
    render :layout => "teaser"
  end

end
