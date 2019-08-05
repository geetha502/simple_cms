class Section < ApplicationRecord
  belongs_to :page

  validates :name, presence: true, uniqueness: true
  validates :position, presence: true

end
