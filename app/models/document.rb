class Document < ApplicationRecord
    has_many :applications_documents 
    has_many :programs_documents
    has_many :applications, through: :applications_documents
end
