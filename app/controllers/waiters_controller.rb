class WaitersController < ApplicationController
  before_action :set_waiter, only: [:show, :edit, :update, :destroy]

  # GET /waiters
  def index
    @waiters = Waiter.all
  end

  # GET /waiters/1
  def show
  end

  # GET /waiters/new
  def new
    @waiter = Waiter.new
  end

  # GET /waiters/1/edit
  def edit
  end

  # POST /waiters
  def create
    @waiter = Waiter.new(waiter_params)

    if @waiter.save
      redirect_to @waiter, notice: 'Waiter was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /waiters/1
  def update
    if @waiter.update(waiter_params)
      redirect_to @waiter, notice: 'Waiter was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /waiters/1
  def destroy
    @waiter.destroy
    redirect_to waiters_url, notice: 'Waiter was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiter
      @waiter = Waiter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def waiter_params
      params.require(:waiter).permit(:name, :phone, :address)
    end
end
