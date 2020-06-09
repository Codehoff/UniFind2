class UniversitiesProgram < ApplicationRecord
    belongs_to :program 
    belongs_to :university
    has_many :applications, dependent: :destroy
    has_many :universities_programs_documents, dependent: :destroy
    has_many :documents, through: :universities_programs_documents, dependent: :destroy
end
