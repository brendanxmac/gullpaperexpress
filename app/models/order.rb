class Order < ApplicationRecord
  belongs_to :user
  mount_uploader :attachment, AttachmentUploader
end
