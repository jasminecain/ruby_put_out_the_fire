require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
puts new_patient.first_name
puts new_patient.last_name
begin
puts patient_contact_info
rescue
  puts 'fix attempt one'
end
puts new_patient.patient_status(:coma)
begin
puts new_patient.patient_currently_admitted?
rescue
  puts 'fix attempt two'
end
begin
puts new_patient.patient_new_total(125)
rescue
  puts 'fix attempt three'
end
begin
new_patient.add_med_to_list("lipitor", 123.12)
rescue ArgumentError
  puts 'Fixing the ArgumentError'
end
begin
new_patient.patient_medications_list
rescue
  puts 'Fixing RuntimeError'
end

# Run main.rb and handle all raised exceptions. Pay attention to the comments that provide additional info/directions. You should not change the code to fix the errors but handle all exceptions with proper exception handling.
