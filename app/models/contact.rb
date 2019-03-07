class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end

  def friendly_full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def friendly_japenese_phone
    "+81 #{phone_number}"
  end
end
