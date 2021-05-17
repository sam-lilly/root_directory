class Address < ApplicationRecord

    # STATES = %w(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)

    validates :user_id, :first_name, :last_name, :address_1, :city, :country, presence: true
    validates :state, presence: true #inclusion: { in: STATES }
    validates :zip_code, presence: true #length: 5
    validates :phone_number, presence: true #length: 10,

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

end