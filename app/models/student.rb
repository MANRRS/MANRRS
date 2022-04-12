# frozen_string_literal: true

class Student < ApplicationRecord
  validates :Phone_Number, presence: true
  # :uniqueness => true

  def Phone_Number=(value)
    value = stripDigits(stripNonIntegers(value.to_s)).to_i
    super(value)
  end

  def stripWhitespace(str)
    str.gsub(/\s+/, '')
  end

  def stripNonIntegers(str)
    str.tr('^0-9', '')
  end

  def stripDigits(str)
    str[-10..] || str
  end
end
