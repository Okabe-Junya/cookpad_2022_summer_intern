# frozen_string_literal: true

class Production < ApplicationRecord
  validates :name, :category, presence: true
end
