class PagesController < ApplicationController
  def home
    render :layout => "teaser"
  end

end
