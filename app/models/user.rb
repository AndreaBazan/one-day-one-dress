class User < ApplicationRecord
  DEFAULT_PHOTO_URL = ''
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dresses, dependent: :destroy
  has_many :rentals
  mount_uploader :photo, PhotoUploader

  def photo_or_default
    if remote_photo_url.present?
      photo
    else
      photo
      # DEFAULT_PHOTO_URL
    end
  end
end
