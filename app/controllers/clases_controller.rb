class ClasesController < ApplicationController

    def index
        @clases =  Clase.all
    end

    def show
        @clase = Clase.find(params[:id])
    end

    def new
        @clase = Clase.new
    end

    def create
        @clase = Clase.new(clase_params)

        @clase.save
        redirect_to @clase
    end

    def destroy
        @clase.destroy
    end

    def clase_params
        params.require(:clase).permit(:nombre, :fecha, :cupos)
    end
end