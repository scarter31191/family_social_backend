module Api
    module V1
<<<<<<< HEAD
        class UsersController < ApplicationController
            
            





=======
        class UsersController < ApplicationController 
            def create
                user = User.new(user_params)
                if user.save
                    render :json user
                else
                render json: {error: user.errors.full_messages},  status: 403
                end
            end
        
        
            private
        
            def user_params
                params.permit(:email, :username, :bio, :password)
            end
>>>>>>> 26d976d3fb8ded71adceb4c2370563b06e4768a2
        end
    end
end
