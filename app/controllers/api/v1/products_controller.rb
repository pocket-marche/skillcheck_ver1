# frozen_string_literal: true

module Api
  module V1
    class ProductsController < ApplicationController
      def index
        @products = Product.preload(:variants).order(created_at: :desc)
      end
    end
  end
end
