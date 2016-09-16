class RollingThingsController < ApplicationController
  before_action :set_rolling_thing, only: [:show, :edit, :update, :destroy]

  # GET /rolling_things
  # GET /rolling_things.json
  def index
    @rolling_things = RollingThing.all
  end

  # GET /rolling_things/1
  # GET /rolling_things/1.json
  def show
  end

  # GET /rolling_things/new
  def new
    @rolling_thing = RollingThing.new
  end

  # GET /rolling_things/1/edit
  def edit
  end

  # POST /rolling_things
  # POST /rolling_things.json
  def create
    @rolling_thing = RollingThing.new(rolling_thing_params)

    respond_to do |format|
      if @rolling_thing.save
        format.html { redirect_to @rolling_thing, notice: 'Rolling thing was successfully created.' }
        format.json { render :show, status: :created, location: @rolling_thing }
      else
        format.html { render :new }
        format.json { render json: @rolling_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rolling_things/1
  # PATCH/PUT /rolling_things/1.json
  def update
    respond_to do |format|
      if @rolling_thing.update(rolling_thing_params)
        format.html { redirect_to @rolling_thing, notice: 'Rolling thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @rolling_thing }
      else
        format.html { render :edit }
        format.json { render json: @rolling_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rolling_things/1
  # DELETE /rolling_things/1.json
  def destroy
    @rolling_thing.destroy
    respond_to do |format|
      format.html { redirect_to rolling_things_url, notice: 'Rolling thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rolling_thing
      @rolling_thing = RollingThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rolling_thing_params
      params.require(:rolling_thing).permit(:name, :speed)
    end
end
