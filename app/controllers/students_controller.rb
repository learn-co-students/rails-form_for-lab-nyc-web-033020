class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update]

    def index
        @students = Student.all
        #redirect_to students_path
    end

    def show
        # @student = Student.find(params[:id])
        #redirect_to student_path(@student)
    end

    def new
        @student = Student.new
        #redirect_to student_path(@student)
    end

    def create
        @student = Student.create (student_params)
        redirect_to student_path(@student)
    end

    def edit
        # @student = Student.find(params[:id])
        # render :edit
    end
    
    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end
    
    private
    
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
    
    def find_student
        @student = Student.find(params[:id])
    end

end