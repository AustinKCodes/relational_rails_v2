require "rails_helper"

RSpec.describe LiquorDistilleriesController
    describe "Liquor Distillery index action" do
        it "lists all distilleries" do
            @distillery1 = LiquorDistillery.create!(name: "Distillery One")
            @distillery2 = LiquorDistillery.create!(name: "Distillery Two")

            visit "/liquor_distilleries"

            expect(page).to have_content(@distillery1.name)
            expect(page).to have_content(@distillery2.name)
        end
    end