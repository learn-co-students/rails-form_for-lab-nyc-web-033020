class SchoolsController < ApplicationController
    def index 
        @school = School.all 
      end 
  
      def show 
          @school = School.find(params[:id])
      end 
  
      def new 
          School.new 
      end 
  
      def create 
          @school = SchoolClass.create(title: params[:title], room_number: params[:room_number])
          redirect_to school_path(@school)
      end 
  
      def edit 
          School.find(params[id])
      end 
  
      def update 
          @school = School.find(params[id])
          @school.update(title: params[:title], room_number: params[:room_number])
          redirect_to school_path(@school)
      end 
end
