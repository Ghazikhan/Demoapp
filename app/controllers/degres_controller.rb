class DegresController < ApplicationController
  before_action :set_degre, only: [:show, :edit, :update, :destroy]

  # GET /degres
  # GET /degres.json
  def index
    @degres = Degre.all
  end

  # GET /degres/1
  # GET /degres/1.json
  def show
  end

  # GET /degres/new
  def new
    @degre = Degre.new
  end

  # GET /degres/1/edit
  def edit
  end

  # POST /degres
  # POST /degres.json
  def create
    @degre = Degre.new(degre_params)

    respond_to do |format|
      if @degre.save
        format.html { redirect_to @degre, notice: 'Degre was successfully created.' }
        format.json { render :show, status: :created, location: @degre }
      else
        format.html { render :new }
        format.json { render json: @degre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degres/1
  # PATCH/PUT /degres/1.json
  def update
    respond_to do |format|
      if @degre.update(degre_params)
        format.html { redirect_to @degre, notice: 'Degre was successfully updated.' }
        format.json { render :show, status: :ok, location: @degre }
      else
        format.html { render :edit }
        format.json { render json: @degre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degres/1
  # DELETE /degres/1.json
  def destroy
    @degre.destroy
    respond_to do |format|
      format.html { redirect_to degres_url, notice: 'Degre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degre
      @degre = Degre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def degre_params
      params.require(:degre).permit(:name, :drege_type)
    end
end
