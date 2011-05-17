class AuthController < ApplicationController
  skip_before_filter :authenticate_user!
  
  def create
    render :text => request.env["omniauth.auth"].to_yaml    
  end
end