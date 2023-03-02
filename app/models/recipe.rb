class Recipe < ApplicationRecord

    validates :title, presence: true, length: {minimum: 2, maximum: 100}
    validates :category, presence: true, length: {minimum: 2, maximum: 100}
    validates :image_path_exists, true

    def image_path_exists
        require 'open-uri'

        begin
            #is the URL valid
           #if thrown an exception, then rescue will execute
            path = URI.open(image_path)
            #does the response have a content type image
            errors.add(:image_path, "does not contain image content") and return unless path.content_type.starts_with?("image")
    
        rescue 
            errors.add(:image_path, "invalid URL")
        end   
    end
end
