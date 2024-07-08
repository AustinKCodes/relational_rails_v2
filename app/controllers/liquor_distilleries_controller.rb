class LiquorDistilleriesController < ApplicationController
    def index
        @liquor_distilleries = LiquorDistillery.all
    end

    def show
        
    end
end