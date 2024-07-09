class LiquorsController < ApplicationController
    def index
        @liquors = Liquor.all
    end
end