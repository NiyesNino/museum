class VgsController < ApplicationController
  before_action :set_vg, only: [:show, :edit, :update, :destroy]

  # GET /vgs
  # GET /vgs.json
  def index
    @vgs = Vg.all
  end

  # GET /vgs/1
  # GET /vgs/1.json
  def show
  end

  # GET /vgs/new
  def new
    @vg = Vg.new
  end

  # GET /vgs/1/edit
  def edit
  end

  # POST /vgs
  # POST /vgs.json
  def create
    @vg = Vg.new(vg_params)

    respond_to do |format|
      if @vg.save
        format.html { redirect_to @vg, notice: 'Vg was successfully created.' }
        format.json { render :show, status: :created, location: @vg }
      else
        format.html { render :new }
        format.json { render json: @vg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vgs/1
  # PATCH/PUT /vgs/1.json
  def update
    respond_to do |format|
      if @vg.update(vg_params)
        format.html { redirect_to @vg, notice: 'Vg was successfully updated.' }
        format.json { render :show, status: :ok, location: @vg }
      else
        format.html { render :edit }
        format.json { render json: @vg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vgs/1
  # DELETE /vgs/1.json
  def destroy
    @vg.destroy
    respond_to do |format|
      format.html { redirect_to vgs_url, notice: 'Vg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vg
      @vg = Vg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vg_params
      params.require(:vg).permit(:titre, :dev, :annee, :note, :description, :image)
    end
end
