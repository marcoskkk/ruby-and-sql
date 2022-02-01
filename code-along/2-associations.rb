# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-associations.rb

# 1. Query all of the contacts at Apple Inc.
apple = Company.where({name: "Apple, Inc."})[0]
apple_id = apple.id
# contacts = Contact.where({company_id: apple_id})
# we can use apple.contacts instead as we added associations to company.rb

puts "Contacts at Apple, Inc"

for contact in apple.contact
    puts "#{contact.first_name} #{contact.last_name} - #{contact.company.name}"
end

# 2. add association to contacts in Company model

# 3. add association to company in Contact model
