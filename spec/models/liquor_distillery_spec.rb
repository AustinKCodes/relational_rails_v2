require "rails_helper"

RSpec.describe LiquorDistillery do
    it {should have_many :liquors}
end