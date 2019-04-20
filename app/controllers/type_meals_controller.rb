class TypeMealsController < ApplicationController
  before_action :set_type_meal, only: [:show, :edit, :update, :destroy]

  # GET /type_meals
  # GET /type_meals.json
  def index
    @type_meals = TypeMeal.all
  end

  # GET /type_meals/1
  # GET /type_meals/1.json
  def show
  end

  # GET /type_meals/new
  def new
    @type_meal = TypeMeal.new
  end

  # GET /type_meals/1/edit
  def edit
  end

  # POST /type_meals
  # POST /type_meals.json
  def create
    @type_meal = TypeMeal.new(type_meal_params)

    respond_to do |format|
      if @type_meal.save
        format.html { redirect_to @type_meal, notice: 'Type meal was successfully created.' }
        format.json { render :show, status: :created, location: @type_meal }
      else
        format.html { render :new }
        format.json { render json: @type_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_meals/1
  # PATCH/PUT /type_meals/1.json
  def update
    respond_to do |format|
      if @type_meal.update(type_meal_params)
        format.html { redirect_to @type_meal, notice: 'Type meal was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_meal }
      else
        format.html { render :edit }
        format.json { render json: @type_meal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_meals/1
  # DELETE /type_meals/1.json
  def destroy
    @type_meal.destroy
    respond_to do |format|
      format.html { redirect_to type_meals_url, notice: 'Type meal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_meal
      @type_meal = TypeMeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_meal_params
      params.require(:type_meal).permit(:name)
    end
end
