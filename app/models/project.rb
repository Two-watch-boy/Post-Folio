class Project < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  mount_uploader :thumbnail, ThumbnailUploader
end
