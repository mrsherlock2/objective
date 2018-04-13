class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
    
    def homepage    
    @all_journeys = Journey.all
    end
    
end
