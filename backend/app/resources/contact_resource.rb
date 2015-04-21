require 'jsonapi/resource'

class ContactResource < JSONAPI::Resource
  # attributes :name_first, :name_last, :email, :twitter
  # has_many :phone_numbers

  attributes :first_name, :last_name, :email, :company, :role,
    :office_number, :cell_number, :priority, :industry, :origin,
    :notes, :last_contact, :follow_up, :touched, :funnel


end