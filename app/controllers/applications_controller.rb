class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  before_action :new_notification, only: [:index]


  def index
    @applications = Application.joins(:universities_program).order("start_time ASC")
    @universities_programs = []
    @applications.each do |app|
      @universities_programs << app.universities_program if app.user_id == current_user.id 
    end
    @universities_programs_done = []
    @applications.each do |app|
      if app.universities_program.documents - app.documents == []
        @universities_programs_done << app.universities_program
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
          render :new
      end
    end

  def edit
  end

  def update
    @application.update(application_params)
    authorize @application, policy_class: RequestPolicy
    redirect_to "/applications", notice: 'Your application was successfully updated.'
  end

  def destroy
    @application.destroy!
    redirect_to "/applications"
  end

      
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

