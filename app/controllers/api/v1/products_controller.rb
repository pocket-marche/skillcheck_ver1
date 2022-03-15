# frozen_string_literal: true

module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @products = Product.order(created_at: :desc)
        render json: {}
      end
    end
  end
end
