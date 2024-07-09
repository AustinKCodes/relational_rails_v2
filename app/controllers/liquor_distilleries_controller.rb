class LiquorDistilleriesController < ApplicationController
    def index
        @liquor_distilleries = LiquorDistillery.all
    end

    def show
        @liquor_distillery = LiquorDistillery.find(params[:id])
    end
end