class University < ApplicationRecord
    has_many :universities_programs
    has_many :programs, through: :universities_programs
end
