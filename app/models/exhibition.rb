class Exhibition < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
