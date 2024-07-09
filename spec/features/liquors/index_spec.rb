require "rails_helper"

RSpec.describe LiquorsController do
    describe "Liquors Index action" do
        it "shows all liquors" do
            @distillery1 = LiquorDistillery.create!(name: "Jacky D", total_distilleries: 1, has_bourbon: true)
            @liquor1 = Liquor.create!(liquor_distillery_id: @distillery1.id, name: "Liquor 1", age: 5, has_grain: false)
            @liquor2 = Liquor.create!(liquor_distillery_id: @distillery1.id, name: "Liquor 2", age: 10, has_grain: true)

            visit "/liquors"

            expect(page).to have_content(@liquor1.name)
            expect(page).to have_content(@liquor2.name)
        end
    end
end