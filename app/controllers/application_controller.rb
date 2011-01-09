class ApplicationController < ActionController::Base

  protect_from_forgery

  before_filter :authenticate_user!, :set_current

  private

  def set_current
    @current = "home"
  end
end
