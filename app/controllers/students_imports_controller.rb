# frozen_string_literal: true

class StudentsImportsController < ApplicationController
  before_action :authenticate_user!
  def new
    @students_import = StudentsImport.new
  end

  def create
    @students_import = StudentsImport.new(params[:students_import])
    if @students_import.save
      redirect_to students_path
    else
      render :new
    end
  end
end
