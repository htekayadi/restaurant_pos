class OrderlinesController < ApplicationController
  before_action :set_orderline, only: [:show, :edit, :update, :destroy]

  # GET /orderlines
  def index
    @orderlines = Orderline.all
  end

  # GET /orderlines/1
  def show
  end

  # GET /orderlines/new
  def new
    @orderline = Orderline.new
  end

  # GET /orderlines/1/edit
  def edit
  end

  # POST /orderlines
  def create
    @orderline = Orderline.new(orderline_params)

    if @orderline.save
      redirect_to @orderline, notice: 'Orderline was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /orderlines/1
  def update
    if @orderline.update(orderline_params)
      redirect_to @orderline, notice: 'Orderline was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /orderlines/1
  def destroy
    @orderline.destroy
    redirect_to orderlines_url, notice: 'Orderline was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderline
      @orderline = Orderline.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def orderline_params
      params.require(:orderline).permit(:order)
    end
end
