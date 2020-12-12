class DropRatesController < ApplicationController
  before_action :set_drop_rate, only: [:show, :edit, :update, :destroy]

  # GET /drop_rates
  # GET /drop_rates.json
  def index
    @drop_rates = DropRate.all
  end

  # GET /drop_rates/1
  # GET /drop_rates/1.json
  def show
  end

  # GET /drop_rates/new
  def new
    @drop_rate = DropRate.new
  end

  # GET /drop_rates/1/edit
  def edit
  end

  # POST /drop_rates
  # POST /drop_rates.json
  def create
    @drop_rate = DropRate.new(drop_rate_params)

    respond_to do |format|
      if @drop_rate.save
        format.html { redirect_to @drop_rate, notice: 'Drop rate was successfully created.' }
        format.json { render :show, status: :created, location: @drop_rate }
      else
        format.html { render :new }
        format.json { render json: @drop_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drop_rates/1
  # PATCH/PUT /drop_rates/1.json
  def update
    respond_to do |format|
      if @drop_rate.update(drop_rate_params)
        format.html { redirect_to @drop_rate, notice: 'Drop rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @drop_rate }
      else
        format.html { render :edit }
        format.json { render json: @drop_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drop_rates/1
  # DELETE /drop_rates/1.json
  def destroy
    @drop_rate.destroy
    respond_to do |format|
      format.html { redirect_to drop_rates_url, notice: 'Drop rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drop_rate
      @drop_rate = DropRate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drop_rate_params
      params.require(:drop_rate).permit(:run, :artifacts, :des_artifacts, :percent_des)
    end
end
