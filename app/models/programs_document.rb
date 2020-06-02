class ProgramsDocument < ApplicationRecord
    belongs_to :program 
    belongs_to :document
end
