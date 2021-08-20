class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all
    end

    def new 

    end

    def create
    end

    def show
        @tweets = Tweet.find(params[:id])
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy
    end
end
