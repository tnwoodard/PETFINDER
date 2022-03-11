class Pet < ApplicationRecord
  has_one_attached :photo
  belongs_to :custodian, class_name: "User", optional: true
  belongs_to :owner, class_name: "User", optional: true
  has_many :meetups, dependent: :destroy
  validates :species, length: { minimum: 3 }
  validates :location, length: { minimum: 2 }
  validates :date_found, presence: true
  validates :has_id, inclusion: [true, false]
  validates :latitude, true
  validates :longitude, true
  # validates :description, length: { minimum: 25 }
  # validates :status, length: { minimum: 4 }
  validates :sex, inclusion: ["male", "female", "undetermined"]
end
