class ApplicationsDocumentsController < ApplicationController
  before_action :set_applications_document, only: [:destroy ]

    def new
        @application = Application.find(params[:application_id])
        @applications_document = ApplicationsDocument.new
    end
  
    def create
      @document = Document.new
      @application = Application.find(params[:application_id])
      @applications_document = ApplicationsDocument.new(applications_document_params)
      @applications_document.application_id = @application.id
      @applications_document.save
      @application.applications_documents << @applications_document
      redirect_to "/applications"
    end

    def edit
    end
  
    def update 
    end

    def destroy
      @applications_document.destroy!
      redirect_to "/applications"
    end

    private

    def set_applications_document
      @applications_document = ApplicationsDocument.find(params[:id])
    end

    def applications_document_params
      params.require(:applications_document).permit(:application_id, :document_id)
    end

    def skip_pundit?
      true
    end
  
  end
  
  