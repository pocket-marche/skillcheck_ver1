# frozen_string_literal: true

class Variant < ApplicationRecord
  STATES = %w[active inactive discontinued].freeze
  belongs_to :product
  enum state: STATES.index_by(&:intern)
end
