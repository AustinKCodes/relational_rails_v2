class LiquorDistilleryLiquorsController < ApplicationController
    def index
        @distillery = LiquorDistillery.find(params[:id])
    end
end