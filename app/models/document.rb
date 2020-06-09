class Document < ApplicationRecord
    has_many :applications_documents, dependent: :destroy 
    has_many :programs_documents, dependent: :destroy
    has_many :applications, through: :applications_documents
end
