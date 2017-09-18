class Order < ApplicationRecord
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader

  validates :title, presence: true, length: {minimum: 3, maximum: 60}
  validates :location, presence: true
  validates :delivery_time, presence: true
  validates :attachment, presence: true
  validates :details, length: { maximum: 100}
  validates :page_count, presence: true

end
