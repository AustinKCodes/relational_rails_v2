require "rails_helper"

RSpec.describe LiquorDistilleriesController do
    describe "Liquor Distillery index action" do
        it "shows the distilleries' information" do
            jack_daniels = LiquorDistillery.create!(name: "Jack Daniels", total_distilleries: 1, has_bourbon: true)

            visit "/liquor_distilleries/#{jack_daniels.id}"

            expect(page).to have_content(jack_daniels.name)
        end
    end
end