class FollowsController < ApplicationController
    
    def create
    @user = User.find(params[:id])
    Follow.create(user_id: @user.id, 
        follower_id: current_user.id)
    end
    
    
end
