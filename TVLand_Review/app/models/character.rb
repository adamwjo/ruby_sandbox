class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def self.all_catchphrases
        self.all.pluck(:catchphrase)
    end

    #Character.all_catchphrases
end