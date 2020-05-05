class Post < ApplicationRecord
   belongs_to :categories
   mount_uploader :image, ImageUploader
end
