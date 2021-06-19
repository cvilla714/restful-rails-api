module Secured
  extend ActiveSupport::Concern

  included do
    before_action :authenticate_request!
  end

  private

  def authenticate_request!
    auth_token
  rescue JWT::VerificationError, JWT::DecodeError
    render json: { errors: ['Not Authenticated'] }, status: :unauthorized
  end

  def http_token
    request.headers['Authorization'].split(' ').last if request.headers['Authorization'].present?
  end

  def auth_token
    JsonWebToken.verify(http_token)
  end
end

SCOPES = {
  '/private' => nil,
  '/private-scoped' => ['read:messages']
}

  private

def authenticate_request!
  @auth_payload, @auth_header = auth_token

  render json: { errors: ['Insufficient scope'] }, status: :unauthorized unless scope_included
rescue JWT::VerificationError, JWT::DecodeError
  render json: { errors: ['Not Authenticated'] }, status: :unauthorized
end
