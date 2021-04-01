class RedeemedRewardsController < ApplicationController
  before_action :set_redeemed_reward, only: [:show, :update, :destroy]

  # GET /redeemed_rewards
  def index
    @redeemed_rewards = RedeemedReward.all

    render json: @redeemed_rewards
  end

  # GET /redeemed_rewards/1
  def show
    render json: @redeemed_reward
  end

  # POST /redeemed_rewards
  def create
    @redeemed_reward = RedeemedReward.new(redeemed_reward_params)

    if @redeemed_reward.save
      render json: @redeemed_reward, status: :created, location: @redeemed_reward
    else
      render json: @redeemed_reward.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /redeemed_rewards/1
  def update
    if @redeemed_reward.update(redeemed_reward_params)
      render json: @redeemed_reward
    else
      render json: @redeemed_reward.errors, status: :unprocessable_entity
    end
  end

  # DELETE /redeemed_rewards/1
  def destroy
    @redeemed_reward.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redeemed_reward
      @redeemed_reward = RedeemedReward.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def redeemed_reward_params
      params.require(:redeemed_reward).permit(:name, :timestamp, :price, :user_id)
    end
end
