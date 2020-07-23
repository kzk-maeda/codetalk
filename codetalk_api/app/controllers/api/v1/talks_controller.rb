class Api::V1::TalksController < ApplicationController
    before_action :current_user, only: [:create, :update, :destroy]

    def index
        logger.info 'talks#index'
        @talks = Talk.all
        render 'index', handlers: 'jbuilder'
    end
    
    def create
        logger.info "tasks#create"
        @talk = current_user.talks.build(talk_params)
        if @talk.save
            render 'talk', handlers: 'jbuilder'
        else
            logger.warn "save error"
        end
    end

    def update
    
    end

    def destroy
    
    end

    private
        def talk_params
            params.require(:talk).permit(:lang, :lang_version, :code, :result)
        end

        def current_user
            return current_api_v1_user
        end
end
