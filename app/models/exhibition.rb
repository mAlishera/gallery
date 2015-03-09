class Exhibition < ActiveRecord::Base
  mount_uploader :picture, PictureUploader

  monetize :price_cents, :as => "price", :with_currency => :rub
  register_currency :rub

end
