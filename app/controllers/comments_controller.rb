class CommentsController < ApplicationController
before_action :logged_in_user, only: [:create, :destroy]
before_action :correct_user,   only: [:destroy]
    
    
#  def create
#    @article = Article.find(params[:article_id])
#    @comment = @article.comments.create(comment_params)
#    redirect_to article_path(@article)
#  end
    
  def create
      @article = Article.find(params[:article_id])
      @user = current_user.id
      @comment = @article.comments.create(comment_params)
      if @comment.save
          flash[:success] = "Comment created!"
          redirect_to article_path(@article)
      end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
#    redirect_to article_path(@article)
    flash[:success] = "Comment deleted"      
    redirect_to request.referrer || root_url      
  end    
    
  private
#    def comment_params
#      params.require(:comment).permit(:commenter, :body)
#    end

    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end    
    
  def correct_user
    @comment = current_user.comments.find_by(id: params[:id])
    redirect_to article_path if @comment.nil?
  end    
    
end
