class UniversitiesProgramsController < ApplicationController
  before_action :set_universities_program, only: [ :show, :edit, :update, :destroy ]
  before_action :new_notification, only:[:show, :index]

  def index
    if params[:query].present?
      sql_query = " \
      universities_programs.discipline ILIKE :query \
      OR programs.name ILIKE :query \
      "
      @universities_programs = UniversitiesProgram.joins(:program).where(sql_query, query: "%#{params[:query]}%")
    else
      @universities_programs = UniversitiesProgram.all
    end
  end

  def show
    @application = Application.new
    authorize @application, policy_class: RequestPolicy
  end

  private

  def new_notification
    @user_apps = Application.joins(:universities_program).order("start_time ASC").where(user_id: current_user.id)
    @user_programs = [] 
    @user_apps.each do |app|
      @user_programs << app.universities_program
    end    
    @user_apps.each do |app|
      if (app.universities_program.documents - app.documents).count > 0 && ((app.universities_program.start_time - Time.now)/86400) <= 30
        if app.notifications == []
          Notification.create(application_id: app.id, content:"Only #{((app.universities_program.start_time - Time.now)/86400).ceil} days left for your application at #{app.universities_program.university.name}")
        end 
      end
    end
  end 
  
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
