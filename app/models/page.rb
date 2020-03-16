class Page < ApplicationRecord
  validates :type, :head, :lead, :author, :description, presence: true
  mount_uploader :cover, CoverUploader
  mount_uploader :squarecover, SquarecoverUploader
end
