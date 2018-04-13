class SubgoalsController < ApplicationController
    
    def newsubgoals
    @subgoal = Subgoal.new
    @journey = Journey.find(params[:id])
    end
    
    def createsubgoal
    Subgoal.create(title: params[:subgoal][:title],
        deadline: params[:subgoal][:deadline],
        journey_id: params[:subgoal][:journey_id])
    end
    
    def showsubgoal
    @journey = Journey.find(params[:id])
    @subgoals = @journey.subgoals
    end
end
