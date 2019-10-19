class AirQualityParametersController < ApplicationController
  before_action :set_air_quality_parameter, only: [:show, :edit, :update, :destroy]

  # GET /air_quality_parameters
  # GET /air_quality_parameters.json
  def index
    @air_quality_parameters = AirQualityParameter.all
  end

  # GET /air_quality_parameters/1
  # GET /air_quality_parameters/1.json
  def show
  end

  # GET /air_quality_parameters/new
  def new
    @air_quality_parameter = AirQualityParameter.new
  end

  # GET /air_quality_parameters/1/edit
  def edit
  end

  # POST /air_quality_parameters
  # POST /air_quality_parameters.json
  def create
    @air_quality_parameter = AirQualityParameter.new(air_quality_parameter_params)

    respond_to do |format|
      if @air_quality_parameter.save
        format.html { redirect_to @air_quality_parameter, notice: 'Air quality parameter was successfully created.' }
        format.json { render :show, status: :created, location: @air_quality_parameter }
      else
        format.html { render :new }
        format.json { render json: @air_quality_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /air_quality_parameters/1
  # PATCH/PUT /air_quality_parameters/1.json
  def update
    respond_to do |format|
      if @air_quality_parameter.update(air_quality_parameter_params)
        format.html { redirect_to @air_quality_parameter, notice: 'Air quality parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @air_quality_parameter }
      else
        format.html { render :edit }
        format.json { render json: @air_quality_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /air_quality_parameters/1
  # DELETE /air_quality_parameters/1.json
  def destroy
    @air_quality_parameter.destroy
    respond_to do |format|
      format.html { redirect_to air_quality_parameters_url, notice: 'Air quality parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_air_quality_parameter
      @air_quality_parameter = AirQualityParameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def air_quality_parameter_params
      params.require(:air_quality_parameter).permit(:name, :description, :air_quality_parameter_unit_id)
    end
end
