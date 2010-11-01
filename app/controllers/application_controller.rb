class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      user_root_path(:username => resource.username)
    else
      super
    end
  end 
  
end
