class Passenger < ActiveRecord::Base
    has_many :trips
    has_many :drivers, through: :trips
end