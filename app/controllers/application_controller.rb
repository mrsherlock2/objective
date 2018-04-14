class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
    
    def homepage    
    @page = params[:page].blank? ? 1:params[:page].to_i
    @count = params[:page].blank? ? 9:params[:count].to_i
    @max_pages = (Journey.all.length.to_f/@count).ceil
    @all_journeys = Journey.offset((@page-1)*@count).limit(@count)
    end
    
end
