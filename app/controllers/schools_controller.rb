class SchoolsController < ApplicationController
    before_action :find_school, only: [:edit, :show]

    def index
        @schools = School.all
    end
    
    def new
        @school = School.new
    end
    
    def create
        @school = School.new(school_params)
        @school.save
        redirect_to school_path(@school)
    end
    
    def edit
    end
    
    def update
        @school = School.find(params[:id])
        @school.update(school_params)
        redirect_to school_path(@school)
    end
    
    def show
    end
    

    private
    def school_params
        params.require(:school).permit(:title, :room_number)
    end

    def find_school
        @school = School.find(params[:id])
    end
end
