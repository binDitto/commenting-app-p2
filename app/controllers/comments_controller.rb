class CommentsController < ApplicationController

  before_action :set_comment, only: :destroy

  def index
    @comments = Comment.all.order('created_at DESC')

    if Comment.count > 6
      Comment.order('created_at DESC').limit(1).offset(6).destroy_all
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  def create
    @comment = Comment.create(set_params)

    respond_to do |format|
      format.js
    end

  end

  def destroy
    @comment.destroy

    respond_to do |format|
      format.js
    end

  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_params
      params.require(:comment).permit(:name, :description)
    end

end
