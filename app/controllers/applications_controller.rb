class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]


  def index
    @applications_complete = Application.where(completed: true)
    @applications = Application.joins(:universities_program).order("start_time ASC").where(user_id: current_user.id)
    @universities_programs = []
    @applications.each do |app|
      @universities_programs << app.universities_program if app.user_id == current_user.id
    end
    @universities_programs_done = []
    @applications.each do |app|
      if app.universities_program.documents - app.documents == []
        @universities_programs_done << app.universities_program if app.user_id == current_user.id
      end
    end
  end

  def show
  end

  def new
      @universities_program = UniversitiesProgram.find(params[:universities_program_id])
      @application = Application.new
  end

  def create
      @application = Application.new(application_params)
      @application.user = current_user

      if @application.save
          redirect_to applications_path
      else
          redirect_to "/universities_programs/#{params[:application][:universities_program_id]}", notice: 'You already applied for this program.'
      end
    end

  def edit
  end

  def update
    @application.completed = true
    @application.save
    redirect_to "#{@application.universities_program.application_url}", notice: 'Application was sent to your archive!'
  end

  def destroy
    @application.destroy!
    redirect_to "/applications"
  end

  private

  def set_application
    @application = Application.find(params[:id])
    authorize @application, policy_class: RequestPolicy

  end

  def application_params
    params.require(:application).permit(:universities_program_id)
  end

  def skip_pundit?
    true
  end

end

