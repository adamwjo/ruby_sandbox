class Driver < ActiveRecord::Base
    has_many :trips
    has_many :passengers, through: :trips

    def self.most_traveled
      #grab all the drivers and the distance
      self.all.max_by { |driver|  driver.total_distance }
      
      arr = self.all.sort { |driver1, driver2| driver1.trips.sum(:distance) <=> driver2.trips.sum(:distance) }
    #   arr.last
    end

    def total_distance
        self.trips.sum(:distance)
    end

    def self.highest_rated
        self.all.where('rating >= 4')
    end

end