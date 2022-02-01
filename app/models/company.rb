class Company < ApplicationRecord
    has_many :contact

    #H ARDER WAY
    #    def contacts
    #        Contact.where({company_id: id})
    #    end

end
