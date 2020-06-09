class UniversitiesProgramsController < ApplicationController
  before_action :set_universities_program, only: [ :show, :edit, :update, :destroy ]

  def index
    if params[:query].present?
      sql_query = " \
      universities_programs.discipline ILIKE :query 
      OR programs.name ILIKE :query
      OR universities.name ILIKE :query
      OR universities_programs.degree ILIKE :query
      "
      @universities_programs = UniversitiesProgram.joins(:program, :university).where(sql_query, query: "%#{params[:query]}%")
    else
      @universities_programs = UniversitiesProgram.all
    end
  end

  def show
    @application = Application.new
  end  
    
  private

  def set_universities_program
    @universities_program = UniversitiesProgram.find(params[:id])
  end

  def universities_program_params
    params.require(:universities_program).permit(:university_id, :program_id, :programs_documents_id, :quota, :degree, :webpage_url, :discipline, :language, :semesters, :deadline)
  end

  def skip_pundit?
    true
  end
end
