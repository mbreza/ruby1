json.array!(@students) do |student|
  json.extract! student, :id, :FirstName, :LastName, :Index
  json.url student_url(student, format: :json)
end
