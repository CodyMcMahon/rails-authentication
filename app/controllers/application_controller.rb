class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def im_gay
    
  end
  
  def create
  
  end
  
  def main
     @user = User.new
  end
  
  
end
