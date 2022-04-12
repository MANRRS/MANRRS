# frozen_string_literal: true

class Masterkey < ApplicationRecord
  validates :key, presence: true
end
