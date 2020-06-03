class UniversitiesProgram < ApplicationRecord
    belongs_to :program 
    belongs_to :university
    has_many :applications
    has_many :universities_programs_documents
    has_many :documents, through: :universities_programs_documents
end
