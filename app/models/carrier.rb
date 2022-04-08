# frozen_string_literal: true

class Carrier < ApplicationRecord
  validates :domain, presence: true
end
