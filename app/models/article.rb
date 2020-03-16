class Article < Page
  validates :squarecover, presence: true, if: :cover?
  validates :cover, presence: true, if: :squarecover?
end
