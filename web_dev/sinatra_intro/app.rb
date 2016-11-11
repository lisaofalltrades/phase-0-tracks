# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays
# an address
get '/contact' do
  "<footer>6620 Chase way<br>San Diego CA<br>92130</footer>"
end

# write a GET route that takes
# a persons name as a query parameter
# and say "Good job, [person's name]!"
get '/goodjob/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters 
# to add two numbers and respond 
# with the result.
get '/addnumbers/' do
  number1 = params[:x]
  number2 = params[:y]
  sum = (number1.to_i + number2.to_i).to_s
end

# Make a route that allows the user to
# search the database in some way -- 
# maybe for students who have a certain
# first name, or some other attribute
get '/students/' do
  name = params[:name]
  students = db.execute("SELECT * FROM students")
  like_named_students = ""
  students.each do |student|
    if student['name'].include?(name)
      like_named_students << "ID: #{student['id']}<br>"
      like_named_students << "Name: #{student['name']}<br>"
    end
  end
  like_named_students
end