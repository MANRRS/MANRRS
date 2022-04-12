# frozen_string_literal: true

class Student < ApplicationRecord
  validates :Phone_Number, presence: true
  # :uniqueness => true

  def Phone_Number=(value)
    value = stripDigits(stripNonIntegers(value.to_s)).to_i
    super(value)
  end

  def stripWhitespace(s)
    s.gsub(/\s+/, '')
  end

  def stripNonIntegers(s)
    s.tr('^0-9', '')
  end

  def stripDigits(s)
    s[-10..] || s
  end
end
