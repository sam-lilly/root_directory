class Address < ApplicationRecord

    validates :user_id, :first_name, :last_name, :address_1, :city, presence: true 

    # state within
    # validates zip code 
    # validates phone number

    belongs_to :user,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User


end