module Secured
    extend ActiveSupport::Concern
  
    included do
      before_action :authenticate_request!
    end