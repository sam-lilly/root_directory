# == Schema Information
#
# Table name: contacts
#
#  id           :bigint           not null, primary key
#  body         :text             not null
#  email        :string           not null
#  name_company :string           not null
#  phone_number :string           not null
#  reference    :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_contacts_on_email  (email)
#
class Contact < ApplicationRecord

end
