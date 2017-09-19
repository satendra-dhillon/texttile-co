class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_employee!
  helper_method :current_user



  private

  # def current_user
  #   return unless session[:employee_id]
  #   @current_user ||= User.find(session[:employee_id])
  # end

  # def logged_in?
  #   !!session[:employee_id]
  # end


end
