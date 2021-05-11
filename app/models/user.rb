class User < ApplicationRecord

    validates :email, :session_token, presence: true, uniqueness: true
    validates :first_name, :last_name, :password_digest, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }

    after_initialize :ensure_session_token

    attr_reader :password


    has_many :addresses,
        primary_key: :id,
        foreign_key: :address_id,
        class_name: :Address

    has_one :cart,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Cart

    has_many :orders,
        primary_key: :id,
        foreign_key: :order_id,
        class_name: :Order


    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)

        if user && user.is_password?(password)
            user
        else
            nil
        end

    end


    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
        @password = password
    end


    def is_password?(password)
        pw_obj = BCrypt::Password.new(self.password_digest)
        pw_obj.is_password?(password)
    end


    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end


    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save
        self.session_token
    end


end