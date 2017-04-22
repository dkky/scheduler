json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :name, :description
  json.start lesson.start_time
  json.end lesson.end_time
  json.url lesson_url(lesson, format: :html)
end