class Contact < ApplicationRecord
    belongs_to :companies
    has_many :activity
end
