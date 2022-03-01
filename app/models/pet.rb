class Pet < ApplicationRecord
  has_one_attached :photo

  belongs_to :custodian, class_name: "User"
  validates :species, length: { minimum: 4 }
  validates :location, length: { minimum: 2 }
  validates :date_found, presence: true
  validates :has_id, inclusion: [true, false]
  validates :description, length: { in: 10..100 }
  validates :status, length: { minimum: 4 }

end
