class Program < ApplicationRecord
    has_many :universities_documents
    has_many :universities, through: :universities_programs    
end
