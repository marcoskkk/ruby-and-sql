# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

puts Contact.all
puts Contact.inspect
puts Contact.all.count

# 2. create 1-2 new contacts for each company (they can be made up)

apple = Company.where({ name: "Apple, Inc." })[0]
apple_id = apple.id

new_contact = Contact.new
new_contact.first_name = "Marcos"
new_contact.last_name = "Kashima"
new_contact.email = "marcos@kashima.com"
new_contact.phone_number = "312-843-0243"
new_contact.company_id = apple_id
new_contact.save

new_contact = Contact.new
new_contact.first_name = "Ken"
new_contact.last_name = "Nakashima"
new_contact.email = "ken@nakashima.com"
new_contact.phone_number = "111-111-1111"
new_contact.company_id = apple_id
new_contact.save

amazon = Company.where({ name: "Amazon.com, Inc." })[0]
amazon_id = amazon.id

new_contact = Contact.new
new_contact.first_name = "Marcos"
new_contact.last_name = "Sheng"
new_contact.email = "marcos@sheng.com"
new_contact.phone_number = "111-222-333"
new_contact.company_id = amazon_id
new_contact.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
puts "Conctact: #{Contact.all.count}"
all_contacts = Contact.all
puts all_contacts

for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
