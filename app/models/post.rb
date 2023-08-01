class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :comments, dependent: :destroy

  # Validate presence of title and content
  validates :title, :content, presence: true

  # Validate photo presence with custom validation
  # validate :photo_presence
  # validates :photo, presence: { message: "Please select a photo." }

  # def photo_presence
  #   if photo.blank?
  #     errors.add(:photo, "Please select a photo.")
  #   end
  # end
end
