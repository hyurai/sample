class LikesController < ApplicationController
    def create
        like = Like.create(user_id: params[:user_id],tweet_id: params[:tweet_id])
    end

    def destroy
        like = Like.find(params[:id])
        like.destroy
    end
end
