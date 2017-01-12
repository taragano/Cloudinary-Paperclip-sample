class Photo < ActiveRecord::Base
	has_attached_file :image,
    :storage => :cloudinary,
    :path => ':id/:filename',
    :cloudinary_url_options => {
      :styles => {
        :avatar => {
          width: 100,
          height: 100,
          crop: :thumb,
          gravity: :auto,
          effect: :sharpen
        }
      }
    }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end