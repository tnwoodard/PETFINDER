class Meetup < ApplicationRecord
  belongs_to :pet
  belongs_to :custodian, class_name: "User", optional: true
  belongs_to :owner, class_name: "User", optional: true
end
