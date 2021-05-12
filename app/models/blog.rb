class Blog < ApplicationRecord

    validates :title, :body, presence: true

    # has_one_attachment :photo

end