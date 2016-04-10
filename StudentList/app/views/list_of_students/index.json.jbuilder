json.array!(@list_of_students) do |list_of_student|
  json.extract! list_of_student, :id, :src, :lang, :desc
  json.url list_of_student_url(list_of_student, format: :json)
end
