json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.phone_number contact.phone_number
json.email contact.email
json.bio contact.bio
json.formatted do
  json.updated_at contact.friendly_updated_at
  json.full_name contact.friendly_full_name
  json.japenese_phone contact.friendly_japenese_phone
end
