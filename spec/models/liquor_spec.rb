require "rails_helper"

RSpec.describe Liquor do
    it {should belong_to :liquor_distillery}
end