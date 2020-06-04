class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]


  def index
    @applications = Application.all

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

