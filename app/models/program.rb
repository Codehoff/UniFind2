class Program < ApplicationRecord
    has_many :universities_documents, dependent: :destroy
    has_many :universities, through: :universities_programs, dependent: :destroy    
end
