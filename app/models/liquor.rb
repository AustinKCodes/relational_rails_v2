class Liquor < ApplicationRecord
    belongs_to :liquor_distillery

    def distillery_name
        self.liquor_distillery.name
    end
end