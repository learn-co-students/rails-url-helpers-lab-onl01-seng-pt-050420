class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Studennt.new(params[:student])
    if @student.save
      flash[:success] = "Studennt successfully created"
      redirect_to @student
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path
  end

  private

    def set_student
      @student = Student.find_by(params[:id])
    end
end