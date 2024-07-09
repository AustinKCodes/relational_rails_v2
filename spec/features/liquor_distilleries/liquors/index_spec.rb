require "rails_helper"

RSpec.describe "Liquor Distillery's Liquors page" do
    it "shows a list of liquors made by the distillery" do
        @distillery1 = LiquorDistillery.create!(name: "Jacky D", total_distilleries: 1, has_bourbon: true)
        @liquor1 = Liquor.create!(liquor_distillery_id: @distillery1.id, name: "Liquor 1", age: 5, has_grain: false)
        @liquor2 = Liquor.create!(liquor_distillery_id: @distillery1.id, name: "Liquor 2", age: 10, has_grain: true)

        visit "/liquor_disitilleries/#{@distillery1.id}/liquors"
        expect(page).to have_content(@liquor1.name)
        expect(page).to have_content(@liquor2.name)
        expect(page).to have_content(@liquor1.age)
        expect(page).to have_content(@liquor2.age)
        expect(page).to have_content(@liquor1.has_grain)
        expect(page).to have_content(@liquor2.has_grain)
    end
end