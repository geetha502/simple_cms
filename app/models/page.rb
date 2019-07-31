class Page < ApplicationRecord
  belongs_to :subject
  has_many :sections

  validates :name, presence: true, uniqueness: true
  validates :position, presence: true

end
