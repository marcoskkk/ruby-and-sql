class Company < ApplicationRecord
    has_many :contact

    #HARDER WAY
    #    def contacts
    #        Contact.where({company_id: id})
    #    end

end
