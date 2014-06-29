json.array!(@grads) do |grad|
  json.extract! grad, :id, :first_name, :last_name, :student_num, :email, :graduation_date, :notes
  json.url grad_url(grad, format: :json)
end
