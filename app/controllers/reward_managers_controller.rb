class RewardManagersController < ApplicationController
  before_action :set_reward_manager, only: [:show, :update, :destroy]

  # GET /reward_managers
  def index
    @reward_managers = RewardManager.all

    render json: @reward_managers
  end

  # GET /reward_managers/1
  def show
    render json: @reward_manager
  end

  # POST /reward_managers
  def create
    @reward_manager = RewardManager.new(reward_manager_params)

    if @reward_manager.save
      render json: @reward_manager, status: :created, location: @reward_manager
    else
      render json: @reward_manager.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reward_managers/1
  def update
    if @reward_manager.update(reward_manager_params)
      render json: @reward_manager
    else
      render json: @reward_manager.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reward_managers/1
  def destroy
    @reward_manager.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reward_manager
      @reward_manager = RewardManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reward_manager_params
      params.require(:reward_manager).permit(:user_id, :point, :login_streak)
    end
end
