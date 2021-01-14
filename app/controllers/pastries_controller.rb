class PastriesController < ApplicationController
  before_action :set_pastry, only: [:show, :update, :destroy]

  # GET /pastries
  def index
    @pastries = Pastry.all

    render json: @pastries
  end

  # GET /pastries/1
  def show
    render json: @pastry
  end

  # POST /pastries
  def create
    @pastry = Pastry.new(pastry_params)

    if @pastry.save
      render json: @pastry, status: :created, location: @pastry
    else
      render json: @pastry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pastries/1
  def update
    if @pastry.update(pastry_params)
      render json: @pastry
    else
      render json: @pastry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pastries/1
  def destroy
    @pastry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pastry
      @pastry = Pastry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pastry_params
      params.require(:pastry).permit(:type, :theme, :color, :size, :price)
    end
end
