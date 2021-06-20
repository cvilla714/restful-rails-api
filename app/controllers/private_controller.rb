# frozen_string_literal: true

class PrivateController < ActionController::API
  def private
    render json: 'Hello from a private endpoint! You need to be authenticated to see this'
  end

  def private_scoped
    render json: { message: 'Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.' }
  end
end
