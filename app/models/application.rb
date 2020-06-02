class Application < ApplicationRecord
    has_many :applications_documents
    has_many :documents, through: :applications_documents
    belongs_to :universities_program
    belongs_to :user
    has_one :university, through: :universities_program
    has_one :program, through: :universities_program
    has_many :notifications
end
