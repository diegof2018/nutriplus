class FoodPlanningsController < ApplicationController
  before_action :set_food_planning, only: [:show, :edit, :update, :destroy]

  # GET /food_plannings
  # GET /food_plannings.json
  def index
    @food_plannings = FoodPlanning.all
  end

  # GET /food_plannings/1
  # GET /food_plannings/1.json
  def show
  end

  # GET /food_plannings/new
  def new
    @food_planning = FoodPlanning.new
  end

  # GET /food_plannings/1/edit
  def edit
  end

  # POST /food_plannings
  # POST /food_plannings.json
  def create
    @food_planning = FoodPlanning.new(food_planning_params)

    respond_to do |format|
      if @food_planning.save
        format.html { redirect_to @food_planning, notice: 'Food planning was successfully created.' }
        format.json { render :show, status: :created, location: @food_planning }
      else
        format.html { render :new }
        format.json { render json: @food_planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_plannings/1
  # PATCH/PUT /food_plannings/1.json
  def update
    respond_to do |format|
      if @food_planning.update(food_planning_params)
        format.html { redirect_to @food_planning, notice: 'Food planning was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_planning }
      else
        format.html { render :edit }
        format.json { render json: @food_planning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_plannings/1
  # DELETE /food_plannings/1.json
  def destroy
    @food_planning.destroy
    respond_to do |format|
      format.html { redirect_to food_plannings_url, notice: 'Food planning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_planning
      @food_planning = FoodPlanning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_planning_params
      params.require(:food_planning).permit(:patient_id, :date_start, :date_finish)
    end
end
