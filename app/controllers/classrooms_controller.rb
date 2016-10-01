class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]

  def index
    @classrooms = Classroom.all
  end

  def show
  end

  def new
    @classroom = Classroom.new
    @courses = Course.all
    @students = Student.all
  end

  def edit
    @courses = Course.all
    @students = Student.all
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @courses = Course.new
    @students = Student.new

    if Classroom.exists?(['student_id = ? AND course_id = ?', @classroom.student_id, @classroom.course_id])
      @classroom = Classroom.new     
      flash[:error] = "Falha ao cadastrar, registro duplicado!"
      render 'new'
    else
      @classroom.save
      respond_with(@classroom) 
    end 
  end

  def update
    @classroom.update(classroom_params)
    respond_with(@classroom)
  end

  def destroy
    @classroom.destroy
    respond_with(@classroom)
  end

  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end

    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id, :entry_at)
    end
end
