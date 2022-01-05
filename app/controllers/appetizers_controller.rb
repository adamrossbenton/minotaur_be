class AppetizersController < ApplicationController
  before_action :set_appetizer, only: [:show, :update, :destroy]

  # GET /appetizers
  def index
    @appetizers = Appetizer.all

    render json: @appetizers
  end

  # GET /appetizers/1
  def show
    render json: @appetizer
  end

  # POST /appetizers
  def create
    @appetizer = Appetizer.new(appetizer_params)

    if @appetizer.save
      render json: @appetizer, status: :created, location: @appetizer
    else
      render json: @appetizer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appetizers/1
  def update
    if @appetizer.update(appetizer_params)
      render json: @appetizer
    else
      render json: @appetizer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appetizers/1
  def destroy
    @appetizer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appetizer
      @appetizer = Appetizer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appetizer_params
      params.require(:appetizer).permit(:name, :price, :description, :vegetarian, :vegan, :gf, :df)
    end
end
