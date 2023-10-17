class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :redirect_to_new_domain

  private


  def redirect_to_new_domain
    redirect_to "localhost:3000", status: :found
  end
  
  
end
