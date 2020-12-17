class AreasController < ApplicationController
    def index
        render Area.all
    end
end