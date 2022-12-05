class AeroplanesController < ApplicationController
  before_action :set_aeroplane, only: %i[show update destroy]

  # GET /aeroplanes
  def index
    @aeroplanes = Aeroplane.all

    render json: @aeroplanes
  end

  # GET /aeroplanes/1
  def show
    render json: @aeroplane
  end

  # POST /aeroplanes
  def create
    @aeroplane = Aeroplane.new(aeroplane_params)

    if @aeroplane.save
      render json: @aeroplane, status: :created, location: @aeroplane
    else
      render json: @aeroplane.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aeroplanes/1
  def update
    if @aeroplane.update(aeroplane_params)
      render json: @aeroplane
    else
      render json: @aeroplane.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aeroplanes/1
  def destroy
    @aeroplane.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_aeroplane
    @aeroplane = Aeroplane.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def aeroplane_params
    params.require(:aeroplane).permit(:name, :make_year, :country_of_origin, :fuel_economy, :long_range_cruise_speed,
                                      :passenger_capacity, :crew, :description, :photo)
  end
end
