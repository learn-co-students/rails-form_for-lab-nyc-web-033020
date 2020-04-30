class StudentsController < ApplicationController

    before_action :find_student, only: [:edit, :show]

    def index
        @students = Student.all
    end
    
    def new
        @student = Student.new
    end
    
    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end
    
    def edit
    end
    
    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end
    
    def show
    end
    

    private
    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
        @student = Student.find(params[:id])
    end

end
