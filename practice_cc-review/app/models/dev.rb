class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.find_by({item_name: item_name}) ? true : false
    end

    def give_away(friend_dev, freebie)
        if self.received_one?(freebie.item_name)
            freebie.update({dev_id: friend_dev.id})
        else
            "That don belong to you!!!"
        end
    end
end


# dev1 = Dev.all.sample
# dev2 = Dev.last
# freeb1 = Freebie.all.sample

# dev1.give_away(dev2, freeb1)