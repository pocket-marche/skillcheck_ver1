# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_api_format

  private

    def set_api_format
      return unless request.path.include?('api')

      request.format = :json
    end
end
