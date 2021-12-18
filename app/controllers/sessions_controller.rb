class SessionsController < ApplicationController

    def index
        current_usuario = Usuario.find_by_id(session[:usuario])
    end

    def create
        session[:usuario] = @usuario.id
    end

end