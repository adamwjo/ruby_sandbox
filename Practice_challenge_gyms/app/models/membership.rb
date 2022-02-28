class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :client_id, uniqueness: {scope: :gym_id}
  validates :charge, numericality: {greater_than: 0}
end
