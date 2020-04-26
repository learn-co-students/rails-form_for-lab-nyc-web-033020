class SchoolClassesController < ApplicationController
   
      def show 
          @school_class = SchoolClass.find(params[:id])
      end 
  
      def new 
        @schoolclass = SchoolClass.new 
      end 
        
      def edit 
        @schoolclass = SchoolClass.find(params[:id])
      end 
  
      def create 
          @schoolclass = SchoolClass.create(school_class_params)
          redirect_to school_class_path(@schoolclass)
      end 
  
      def update 
          @schoolclass = SchoolClass.find(params[:id])
          @schoolclass.update(school_class_params)
          redirect_to school_class_path(@schoolclass)
      end 

      private 

      def school_class_params 
        params.require(:school_class).permit!
      end 
end
