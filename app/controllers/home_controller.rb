class HomeController < ApplicationController

    def index
        @usuario = current_usuario
    end
end