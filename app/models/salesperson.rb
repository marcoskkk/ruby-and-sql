class Salesperson < ApplicationRecord
    def change
        create_table :salespeople do [t]
            t.string :first_name
            t.string :last_name
            t.string :email
            t.timestamps
        end
    end
    #if you run, now it will appear in schema

end
