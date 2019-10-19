class DataSetSourcesController < ApplicationController
  before_action :set_data_set_source, only: [:show, :edit, :update, :destroy]

  # GET /data_set_sources
  # GET /data_set_sources.json
  def index
    @data_set_sources = DataSetSource.all
  end

  # GET /data_set_sources/1
  # GET /data_set_sources/1.json
  def show
  end

  # GET /data_set_sources/new
  def new
    @data_set_source = DataSetSource.new
  end

  # GET /data_set_sources/1/edit
  def edit
  end

  # POST /data_set_sources
  # POST /data_set_sources.json
  def create
    @data_set_source = DataSetSource.new(data_set_source_params)

    respond_to do |format|
      if @data_set_source.save
        format.html { redirect_to @data_set_source, notice: 'Data set source was successfully created.' }
        format.json { render :show, status: :created, location: @data_set_source }
      else
        format.html { render :new }
        format.json { render json: @data_set_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_set_sources/1
  # PATCH/PUT /data_set_sources/1.json
  def update
    respond_to do |format|
      if @data_set_source.update(data_set_source_params)
        format.html { redirect_to @data_set_source, notice: 'Data set source was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_set_source }
      else
        format.html { render :edit }
        format.json { render json: @data_set_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_set_sources/1
  # DELETE /data_set_sources/1.json
  def destroy
    @data_set_source.destroy
    respond_to do |format|
      format.html { redirect_to data_set_sources_url, notice: 'Data set source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_set_source
      @data_set_source = DataSetSource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_set_source_params
      params.require(:data_set_source).permit(:name, :confidence_level)
    end
end
