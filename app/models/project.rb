class Project < Page
  validates :cover, :squarecover, presence: true
end
