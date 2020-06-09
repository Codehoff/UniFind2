class University < ApplicationRecord
    has_many :universities_programs, dependent: :destroy
    has_many :programs, through: :universities_programs, dependent: :destroy
end
