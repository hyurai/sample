class CommentsController < ApplicationController
    def create
    end

    def destroy
        comment = Commnet.find(params[:id])
        comment.destroy
    end
end
