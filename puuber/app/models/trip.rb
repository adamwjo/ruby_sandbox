class Trip < ActiveRecord::Base
    belongs_to :passenger
    belongs_to :driver
end