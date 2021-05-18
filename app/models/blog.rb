# == Schema Information
#
# Table name: blogs
#
#  id         :bigint           not null, primary key
#  body       :text             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_blogs_on_title  (title)
#
class Blog < ApplicationRecord

    validates :title, :body, presence: true

    # has_one_attachment :photo

end
