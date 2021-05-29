class Sticker < ApplicationRecord
    mount_uploader :image, ImageUploader # Tells rails to use this uploader for this model.   
    validates :category, presence: true # Make sure the owner's name is present.   
end
