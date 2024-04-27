# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_sales = Salesperson.new
new_sales ["first_name"] = "Ben"
new_sales["last_name"] = "Block"
new_sales.save

second_salesperson = Salesperson.new
second_salesperson ["first_name"] = "Brian"
second_salesperson["last_name"] = "Eng"
second_salesperson.save

p Salesperson.all
# 3. write code to display how many salespeople rows are in the database
puts "Salespeople: #{Salesperson.count}"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
brian = Salesperson.find_by({"first_name" => "Brian"}, {"last_name" => "Eng"})
brian ["email"] = "b-eng@kellogg.northwestern.edu"
brian.save
# p Salesperson.all
# CHALLENGE:
# 5. write code to display each salesperson's full name
salespeople = Salesperson.all
for person in salespeople
first_name = person["first_name"]
last_name = person["last_name"]
puts "#{first_name} #{last_name}"

end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
