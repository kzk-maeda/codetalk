class Api::V1::TalksController < ApplicationController
    before_action :current_user, only: [:create, :update, :destroy]
    skip_before_action :verify_authenticity_token

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
        logger.info "tasks#update"
    end
    
    def destroy
        logger.info "tasks#destroy"
        logger.info params
        @talk = Talk.find_by(id: params['id'])
        if !@talk.nil?
            @talk.destroy
            render :json => { action: "destroy", status: "success" }
        else
            render :json => { action: "destroy", status: "failed", message: "talk not found" }
        end
    end

    private
        def talk_params
            params.require(:talk).permit(:lang, :lang_version, :code, :result)
        end

        def current_user
            return current_api_v1_user
        end
end
