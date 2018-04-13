class PostsController < ApplicationController
    
    def newpost
    @subgoal = Subgoal.find(params[:id])
    @post = @subgoal.posts.build
        
    @allposts = @subgoal.posts.all
    end
    
    def createpost
    @post = Post.create(title: params[:post][:title],
        content: params[:post][:content],
        subgoal_id: params[:post][:subgoal_id])
    end
end
