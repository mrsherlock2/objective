class JourneysController < ApplicationController
    
    def newjourney
    @journey = Journey.new
    end
    
    def createjourney
       @journey = Journey.create(user_id: current_user.id,
            goal: params[:journey][:goal],
            deadline: params[:journey][:goal],
           status: false)
        redirect_to action: 'newsubgoals', :controller => "subgoals", :id => @journey.id
    end
    
    def managejourney
        @journey = Journey.find(params[:id])
        @subgoals = Subgoal.where(journey_id:@journey.id)
    end
    
    def myjourneys
    @all_journeys = current_user.journeys
    @followed = Follow.where(follower_id:current_user.id)
    end
    
    def changestatus
    @journey = Journey.find(params[:id])
    @journey.update(status: !@journey.status)
    redirect_to action: 'myjourneys'
    end
end
