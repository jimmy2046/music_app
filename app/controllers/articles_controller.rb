class ArticlesController < ApplicationController
before_action :logged_in_user, only: [:new, :edit, :create, :update, :destroy]
before_action :correct_user,   only: [:edit, :update, :destroy]
    
  def index
    @articles = Article.paginate(page: params[:page])
  end
    
  def show
    @article = Article.find(params[:id])
  end
    
  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end    
    
#  def create
#    @article = Article.new(article_params)
# 
#    if @article.save
#      redirect_to @article
#    else
#      render 'new'
#    end
#  end    

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:success] = "Article created!"
      redirect_to articles_path
    else
      render 'new'
    end
  end    
    
def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end    

def destroy
  @article = Article.find(params[:id])
  @article.destroy
 
#  redirect_to articles_path
    flash[:success] = "Article deleted"
    redirect_to request.referrer || root_url    
end    
    
private
  def article_params
    params.require(:article).permit(:title, :text)
  end    

  def correct_user
    @article = current_user.articles.find_by(id: params[:id])
    redirect_to root_url if @article.nil?
  end    
    
end
