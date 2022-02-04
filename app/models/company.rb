class Company < ApplicationRecord
    has_many :contacts

    #HARDER WAY
    #    def contacts
    #        Contact.where({company_id: id})
    #    end

end
