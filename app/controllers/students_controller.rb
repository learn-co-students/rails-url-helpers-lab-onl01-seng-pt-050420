class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    if @student.active == true
      @student.active = false
      @student.save
      redirect_to student_path(@student.id)
    else
      @student.active = true
      @student.save
      redirect_to student_path(@student.id)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end