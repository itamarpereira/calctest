class SolidsController < ApplicationController
  before_action :set_solid, only: [:show] # [:edit, :update, :destroy]
  before_action :set_solids, only: [:index, :show]

  # GET /solids
  def index
  end

  # GET /solids/1
  def show
  end

  # GET /solids/new
  def new
    @solid = Solid.new
  end

  # GET /solids/1/edit
  # def edit
  # end

  # POST /solids
  def create
    @solid = Solid.new(solid_params)

    if @solid.save
      redirect_to @solid, notice: 'solid was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /solids/1
  # -def update
  # -  if @solid.update(solid_params)
  # -    redirect_to @solid, notice: 'solid was successfully updated.'
  # -  else
  # -    render :edit
  # -  end
  # -end

  # DELETE /solids/1
  # -def destroy
  # -  @solid.destroy
  # -  redirect_to solids_url, notice: 'solid was successfully destroyed.'
  # -end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_solids
    @solids = Solid.all
  end
  
  def set_solid
    @solid = Solid.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def solid_params
    params.require(:solid).permit(:gender, :dose, :exposure)
  end
end
