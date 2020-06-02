class UniversitiesProgram < ApplicationRecord
    belongs_to :program 
    belongs_to :university
    has_many :applications
end
