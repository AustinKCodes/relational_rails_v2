class LiquorsController < ApplicationController
    def index
        @liquors = Liquor.all
    end

    def show
        @liquor = Liquor.find(params[:id])
    end
end