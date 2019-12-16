class ModelsController < ApplicationController
    def index
        models = Model.all
        render json: models
    end

    def show
        model = Model.find(params[:id])
        render json: model
    end

    def create
        model = Model.create(name:params[:name], year:params[:year], make:Make.find(params[:make]))
        render json: model
    end
end
