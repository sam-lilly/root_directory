# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  address1   :string           not null
#  address2   :string
#  city       :string           not null
#  company    :string
#  country    :string           not null
#  first      :string           not null
#  last       :string           not null
#  phone      :string           not null
#  state      :string           not null
#  zip        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_addresses_on_user_id  (user_id)
#
class Address < ApplicationRecord

    # STATES = %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)

    validates :user_id, :first, :last, :address1, :city, :country, presence: true
    validates :state, presence: true #inclusion: { in: STATES }
    validates :zip, presence: true #length: 5
    validates :phone, presence: true #length: 10,

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

end
