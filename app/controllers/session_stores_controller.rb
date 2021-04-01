class SessionStoresController < ApplicationController
  before_action :set_session_store, only: [:show, :update, :destroy]

  # GET /session_stores
  def index
    @session_stores = SessionStore.all

    render json: @session_stores
  end

  # GET /session_stores/1
  def show
    render json: @session_store
  end

  # POST /session_stores
  def create
    @session_store = SessionStore.new(session_store_params)

    if @session_store.save
      render json: @session_store, status: :created, location: @session_store
    else
      render json: @session_store.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /session_stores/1
  def update
    if @session_store.update(session_store_params)
      render json: @session_store
    else
      render json: @session_store.errors, status: :unprocessable_entity
    end
  end

  # DELETE /session_stores/1
  def destroy
    @session_store.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_store
      @session_store = SessionStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_store_params
      params.require(:session_store).permit(:last_login, :user_id)
    end
end
