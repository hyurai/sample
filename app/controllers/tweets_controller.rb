class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def new 
    end

    def create
    end

    def show
        @tweet = Tweet.find(params[:id])
        @comments = @tweets.comments
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
    end
end
