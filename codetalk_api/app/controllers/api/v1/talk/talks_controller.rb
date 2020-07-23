class Api::V1::Talk::TalksController < ApplicationController
    def index
        p 'talks#index'
        @talks = Talk.all
        render json: { status: 'SUCCESS', message: 'Loaded talks', data: @talks }
    end
    
    def create
    
    end

    def update
    
    end

    def destroy
    
    end
end
