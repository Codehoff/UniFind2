class Application < ApplicationRecord
    has_many :applications_documents, dependent: :destroy
    has_many :documents, through: :applications_documents, dependent: :destroy
    belongs_to :universities_program
    belongs_to :user
    has_one :university, through: :universities_program
    has_one :program, through: :universities_program
    has_many :notifications, dependent: :destroy
    validates :universities_program_id, uniqueness: { scope: :user_id }
end
