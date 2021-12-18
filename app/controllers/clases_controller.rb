class ClasesController < ApplicationController
    before_action :set_clase, only: [:destroy]
    load_and_authorize_resource
    
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
        
        if @clase.save
            redirect_to clase_path
        else
            render :new
        end
    end

    def destroy
        @clase = Clase.find(params[:id])
        @clase.destroy

        redirect_to clase_path
    end

    def current_ability
        @current_ability ||= ::Ability.new(current_usuario)
    end
    
    private
    def clase_params
        params.require(:clase).permit(:nombre, :fecha, :cupos)
    end

    def set_clase
        @clase = Clase.find(params[:id])
    end
end
