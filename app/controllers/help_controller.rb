# frozen_string_literal: true

class HelpController < ApplicationController
  before_action :authenticate_user!
  def index; end
end
