class LiquorDistilleryLiquorsController < ApplicationController
    def index
        distillery = LiquorDistillery.find(params[:id])
        @liquors = distillery.liquors
    end
end