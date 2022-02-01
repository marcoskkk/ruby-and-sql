class Activity < ApplicationRecord
    def change
        create_table :activities do [t]
            t.string :activity
            t.integer :contact_id
            t.integer :Salesperson_id
            t.timestamps
        end
    end
end
