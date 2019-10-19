class AirQualityParameterUnitsController < ApplicationController
  before_action :set_air_quality_parameter_unit, only: [:show, :edit, :update, :destroy]

  # GET /air_quality_parameter_units
  # GET /air_quality_parameter_units.json
  def index
    @air_quality_parameter_units = AirQualityParameterUnit.all
  end

  # GET /air_quality_parameter_units/1
  # GET /air_quality_parameter_units/1.json
  def show
  end

  # GET /air_quality_parameter_units/new
  def new
    @air_quality_parameter_unit = AirQualityParameterUnit.new
  end

  # GET /air_quality_parameter_units/1/edit
  def edit
  end

  # POST /air_quality_parameter_units
  # POST /air_quality_parameter_units.json
  def create
    @air_quality_parameter_unit = AirQualityParameterUnit.new(air_quality_parameter_unit_params)

    respond_to do |format|
      if @air_quality_parameter_unit.save
        format.html { redirect_to @air_quality_parameter_unit, notice: 'Air quality parameter unit was successfully created.' }
        format.json { render :show, status: :created, location: @air_quality_parameter_unit }
      else
        format.html { render :new }
        format.json { render json: @air_quality_parameter_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_quality_parameter_units/1
  # PATCH/PUT /air_quality_parameter_units/1.json
  def update
    respond_to do |format|
      if @air_quality_parameter_unit.update(air_quality_parameter_unit_params)
        format.html { redirect_to @air_quality_parameter_unit, notice: 'Air quality parameter unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_quality_parameter_unit }
      else
        format.html { render :edit }
        format.json { render json: @air_quality_parameter_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_quality_parameter_units/1
  # DELETE /air_quality_parameter_units/1.json
  def destroy
    @air_quality_parameter_unit.destroy
    respond_to do |format|
      format.html { redirect_to air_quality_parameter_units_url, notice: 'Air quality parameter unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_quality_parameter_unit
      @air_quality_parameter_unit = AirQualityParameterUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_quality_parameter_unit_params
      params.require(:air_quality_parameter_unit).permit(:name, :symbol)
    end
end
