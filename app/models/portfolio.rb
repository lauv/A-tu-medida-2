class Portfolio < ApplicationRecord
	validates :description, presence: true
  belongs_to :user
  mount_uploader :photo1, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
end
