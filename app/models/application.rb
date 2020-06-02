class Application < ApplicationRecord
    has_many :applications_documents
    has_many :documents, through: :applications_documents
end
