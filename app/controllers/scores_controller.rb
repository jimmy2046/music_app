class ScoresController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  before_action :admin_user, only: [:new, :create]

  def index
    @scores = Score.all
  end    
    
  def show
    @score = Score.find(params[:id])      
  end

  def new
  end

def create
  @score = Score.new(score_params)
 
  @score.save
  redirect_to @score
end
    
private
  def score_params
    params.require(:score).permit(:title, :artist, :cover, :price)
  end    

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
    end    

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end    
    
end
