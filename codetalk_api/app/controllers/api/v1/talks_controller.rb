class Api::V1::TalksController < ApplicationController
    def index
        logger.info 'talks#index'
        @talks = Talk.all
        render 'index', handlers: 'jbuilder'
    end
    
    def create
        logger.info "tasks#create"
    end

    def update
    
    end

    def destroy
    
    end
end
