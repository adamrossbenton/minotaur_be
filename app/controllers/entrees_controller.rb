class EntreesController < ApplicationController
  before_action :set_entree, only: [:show, :update, :destroy]

  # GET /entrees
  def index
    @entrees = Entree.all

    render json: @entrees
  end

  # GET /entrees/1
  def show
    render json: @entree
  end

  # POST /entrees
  def create
    @entree = Entree.new(entree_params)

    if @entree.save
      render json: @entree, status: :created, location: @entree
    else
      render json: @entree.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entrees/1
  def update
    if @entree.update(entree_params)
      render json: @entree
    else
      render json: @entree.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entrees/1
  def destroy
    @entree.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entree
      @entree = Entree.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entree_params
      params.require(:entree).permit(:name, :price, :description, :vegetarian, :vegan, :gf, :df)
    end
end
