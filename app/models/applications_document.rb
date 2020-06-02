class ApplicationsDocument < ApplicationRecord
    belongs_to :application 
    belongs_to :document
end
