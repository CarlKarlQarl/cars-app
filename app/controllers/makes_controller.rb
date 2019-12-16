class MakesController < ApplicationController
    def index
        makes = Make.all
        render json: makes, include: :models
    end

    def show
        make = Make.find(params[:id])
        render json: make, include: :models
    end

    def create
        make = Make.create(name:params[:name])
        render json: make
    end
end
