class Program < ApplicationRecord
    has_many :programs_documents
    has_many :universities_documents
    has_many :documents, through: :programs_documents
    has_many :universities, through: :universities_programs    
end
