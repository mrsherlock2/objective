class UsersController < ApplicationController
    
    def profilepage
        @user = current_user
        
    end
    
    
    
    def updateuser
        @user = current_user.update(avatar: params[:user][:avatar],
                username: params[:user][:username], 
            dob: params[:user][:dob],
            state: params[:user][:state],
            profession: params[:user][:profession])
        redirect_to action: 'profilepage'
    end
    
    
    def idols
    @followed = Follow.where(follower_id:current_user.id)
    end
    
    def dashboard
    @user = current_user
    @myjourneys = Journey.where(user_id:current_user.id)
    @active = current_user.journeys.find_by_status(true);
    @idols = Follow.where(follower_id:current_user.id)
    end
    
    
    
end
