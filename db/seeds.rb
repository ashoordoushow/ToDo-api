require 'csv'

file = File.join(Rails.root, "db", "todossheet.csv")
CSV.foreach(file) do |row|
  user_id = row[0]
# p user_id
  category_id = row[1]
# p category_id
  title = row[2]
# p title
  description = row[3]
# p description
  deadline = row[4]
# p deadline
  completed = row[5]
# p completed
  Todo.create(user_id: user_id, category_id: category_id, title: title, description: description, deadline: deadline, completed: completed)
end

