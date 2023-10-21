class TweetsController < ApplicationController
  before_action :authenticate_user!
  
    def index
        @tweets = Tweet.all
    end
    # 追加場所ここから
  def new
    @tweet = Tweet.new
  end
  def create
    tweet = Tweet.new(tweet_params)
    #tweet.scoresum = (tweet.score1 + tweet.score2 + tweet.score3 + tweet.score4 + tweet.score5 + tweet.score6 + tweet.score7 + tweet.score8 + tweet.score9 + tweet.score10 + tweet.score11 + tweet.score12 + tweet.score13 + tweet.score14 + tweet.score15 + tweet.score16 + tweet.score17 + tweet.score18)
    if tweet.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      #tweet.scoresum = (tweet.score1 + tweet.score2 + tweet.score3 + tweet.score4 + tweet.score5 + tweet.score6 + tweet.score7 + tweet.score8 + tweet.score9 + tweet.score10 + tweet.score11 + tweet.score12 + tweet.score13 + tweet.score14 + tweet.score15 + tweet.score16 + tweet.score17 + tweet.score18)
      tweet.save
      redirect_to :action => "show", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:date,:place,:score1,:score2,:score3,:score4,:score5,:score6,:score7,:score8,:score9,:score10,:score11,:score12,:score13,:score14,:score15,:score16,:score17,:score18,:scoresum,:good,:more,:selfevaluation)
  end
# ここまで
end
