class UniversitiesProgramsController < ApplicationController
    before_action :set_universities_program, only: [ :show, :edit, :update, :destroy ]

    def index
        @universities_programs = UniversitiesProgram.all
    end 

    def show
    end

    private
  
    def set_universities_program
      @universities_program = UniversitiesProgram.find(params[:id])
    end
  
    def universities_program_params
      params.require(:universities_program).permit(:university_id, :program_id, :programs_documents_id, :quota, :degree, :webpage_url, :discipline, :language, :semesters, :deadline)
    end
end
