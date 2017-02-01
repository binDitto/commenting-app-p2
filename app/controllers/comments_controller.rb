class CommentsController < ApplicationController
  before_action :set_comment, only: [ :edit, :update, :show, :destroy ]

  def index
    @comments = Comment.all


  end

  def new
    @comment = Comment.new()
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = "Thanks for commenting #{@comment.name}"
    end

    respond_to do |format|
      format.html
      format.json
      format.js
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    @comment.destroy

    if @comment.destroy
      flash[:danger] = "Comment deleted!"
    end

    respond_to do |format|
      format.html
      format.json
      format.js
    end

  end

  private

    def comment_params
      params.require(:comment).permit(:name, :description)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end
end
