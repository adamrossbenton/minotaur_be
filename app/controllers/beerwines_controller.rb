class BeerwinesController < ApplicationController
  before_action :set_beerwine, only: [:show, :update, :destroy]

  # GET /beerwines
  def index
    @beerwines = Beerwine.all

    render json: @beerwines
  end

  # GET /beerwines/1
  def show
    render json: @beerwine
  end

  # POST /beerwines
  def create
    @beerwine = Beerwine.new(beerwine_params)

    if @beerwine.save
      render json: @beerwine, status: :created, location: @beerwine
    else
      render json: @beerwine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /beerwines/1
  def update
    if @beerwine.update(beerwine_params)
      render json: @beerwine
    else
      render json: @beerwine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /beerwines/1
  def destroy
    @beerwine.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beerwine
      @beerwine = Beerwine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beerwine_params
      params.require(:beerwine).permit(:name, :beer, :draft, :red)
    end
end
