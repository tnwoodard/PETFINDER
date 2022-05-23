class Meetup < ApplicationRecord
  belongs_to :pet, optional: true
end
