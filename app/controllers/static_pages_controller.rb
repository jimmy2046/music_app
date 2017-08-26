class StaticPagesController < ApplicationController
    
  def home
    @scores = Score.all
  end

  def help
  end

  def about
  end
    
  def contact
  end

  def tweet
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
    
end
