# Top level controller for API resources
class ApplicationController < ActionController::API
  before_action :authenticate_request

  def authenticate_request
    secret_key    = Rails.application.secrets.secret_key_base
    secret_string = ENV["SECRET_STRING"]
    valid_string  = Digest::MD5.hexdigest("#{secret_key}#{secret_string}")
    return unless request.headers['Token'] == valid_string
  end
end
