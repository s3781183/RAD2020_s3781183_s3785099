class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    before_action :update_last_active, if: -> {logged_in? && (current_user.last_active.nil? || current_user.last_active < 5.minutes)}
    
  def update_last_active
      current_user.update_attribute(:last_active, Time.now)
  end
end
