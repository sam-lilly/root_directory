class RemoveImageUrlColumnFromBlogs < ActiveRecord::Migration[5.2]
  def change

    remove_column :blogs, :image_url

  end
end
