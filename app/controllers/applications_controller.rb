class ApplicationsController < ApplicationController
  before_action :set_application, only: [ :show, :edit, :update, :destroy ]

  def show
  end

  def new
  end

  private

  def set_application
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(:universities_program_id, :user_id)
  end
end
