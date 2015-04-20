class BuildTrucksController < ApplicationController
  before_action :set_build_truck, only: [:show, :edit, :update, :destroy]

  # GET /build_trucks
  # GET /build_trucks.json
  def index
    @build_trucks = BuildTruck.all
  end

  # GET /build_trucks/1
  # GET /build_trucks/1.json
  def show
  end

  # GET /build_trucks/new
  def new
    @build_truck = BuildTruck.new
  end

  # GET /build_trucks/1/edit
  def edit
  end

  # POST /build_trucks
  # POST /build_trucks.json
  def create
    @build_truck = BuildTruck.new(build_truck_params)

    respond_to do |format|
      if @build_truck.save
        format.html { redirect_to @build_truck, notice: 'Build truck was successfully created.' }
        format.json { render :show, status: :created, location: @build_truck }
      else
        format.html { render :new }
        format.json { render json: @build_truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /build_trucks/1
  # PATCH/PUT /build_trucks/1.json
  def update
    respond_to do |format|
      if @build_truck.update(build_truck_params)
        format.html { redirect_to @build_truck, notice: 'Build truck was successfully updated.' }
        format.json { render :show, status: :ok, location: @build_truck }
      else
        format.html { render :edit }
        format.json { render json: @build_truck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /build_trucks/1
  # DELETE /build_trucks/1.json
  def destroy
    @build_truck.destroy
    respond_to do |format|
      format.html { redirect_to build_trucks_url, notice: 'Build truck was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build_truck
      @build_truck = BuildTruck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def build_truck_params
      params.require(:build_truck).permit(:name, :size, :flooring, :walls, :lighting, :configuration, :shelves, :hanging_space, :outside_color)
    end
end
