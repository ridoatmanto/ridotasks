class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_timezone

  def set_timezone
    Time.zone = "Jakarta"
  end

  def after_sign_in_path_for(resource)
    tasks_path
  end

  def after_sign_out_path_for(resource_or_scope)
    user_session_path
  end
end
