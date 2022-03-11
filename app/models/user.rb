class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, uniqueness: { scope: :last_name }
  validates :email, presence: true
  validates :phone, presence: true
  validates :location, presence: true
  validates :notes, presence: true

  has_many :pets_as_owner, class_name: "Pet", foreign_key: :owner_id
  has_many :pets_as_custodian, class_name: "Pet", foreign_key: :custodian_id
  has_many :meetups, through: :pets, dependent: :destroy


end
