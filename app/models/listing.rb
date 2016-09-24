class Listing < ApplicationRecord
	has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "images.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

validates :name, :description, :price, presence: true
validates :price, numericality: {greter_than: 0}
validates_attachment_presence :image

belongs_to :user
end
