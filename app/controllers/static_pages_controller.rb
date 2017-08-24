class StaticPagesController < ApplicationController

#  def home
#    if logged_in?
#      @micropost  = current_user.microposts.build
#      @feed_items = current_user.feed.paginate(page: params[:page])
#    end      
#  end
    
  def home
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
