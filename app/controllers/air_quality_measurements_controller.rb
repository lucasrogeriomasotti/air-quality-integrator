class AirQualityMeasurementsController < ApplicationController
  before_action :set_air_quality_measurement, only: [:show, :edit, :update, :destroy]

  # GET /air_quality_measurements
  # GET /air_quality_measurements.json
  def index
    @air_quality_measurements = AirQualityMeasurement.all
  end

  # GET /air_quality_measurements/1
  # GET /air_quality_measurements/1.json
  def show
  end

  # GET /air_quality_measurements/new
  def new
    @air_quality_measurement = AirQualityMeasurement.new
  end

  # GET /air_quality_measurements/1/edit
  def edit
  end

  # POST /air_quality_measurements
  # POST /air_quality_measurements.json
  def create
    @air_quality_measurement = AirQualityMeasurement.new(air_quality_measurement_params)

    respond_to do |format|
      if @air_quality_measurement.save
        format.html { redirect_to @air_quality_measurement, notice: 'Air quality measurement was successfully created.' }
        format.json { render :show, status: :created, location: @air_quality_measurement }
      else
        format.html { render :new }
        format.json { render json: @air_quality_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_quality_measurements/1
  # PATCH/PUT /air_quality_measurements/1.json
  def update
    respond_to do |format|
      if @air_quality_measurement.update(air_quality_measurement_params)
        format.html { redirect_to @air_quality_measurement, notice: 'Air quality measurement was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_quality_measurement }
      else
        format.html { render :edit }
        format.json { render json: @air_quality_measurement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_quality_measurements/1
  # DELETE /air_quality_measurements/1.json
  def destroy
    @air_quality_measurement.destroy
    respond_to do |format|
      format.html { redirect_to air_quality_measurements_url, notice: 'Air quality measurement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_quality_measurement
      @air_quality_measurement = AirQualityMeasurement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_quality_measurement_params
      params.require(:air_quality_measurement).permit(:data_set_id, :measurement_datetime, :air_quality_parameter_id, :value, :location, :city, :country, :coordinates, :radius)
    end
end
