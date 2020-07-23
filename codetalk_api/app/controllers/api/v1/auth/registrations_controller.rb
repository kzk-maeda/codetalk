module Api
    module V1
        module Auth
            class RegistrationsController < DeviseTokenAuth::RegistrationsController
    
                protect_from_forgery
                
                private
                    def sign_up_params
                        params.permit(:name, :email, :password, :password_confirmation)
                    end
            
                    def account_update_params
                        params.permit(:name, :email)
                    end
    
            end
        end
    end
end