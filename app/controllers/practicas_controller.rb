class PracticasController < ApplicationController
  before_action :set_practica, only: [:show, :edit, :update, :destroy]

  # GET /practicas
  # GET /practicas.json
  def index
    @practicas = Practica.all
  end

  # GET /practicas/1
  # GET /practicas/1.json
  def show
  end

  # GET /practicas/new
  def new
    @practica = Practica.new
  end

  # GET /practicas/1/edit
  def edit
  end

  # POST /practicas
  # POST /practicas.json
  def create
    @practica = Practica.new(practica_params)

    respond_to do |format|
      if @practica.save
        format.html { redirect_to @practica, notice: 'Practica was successfully created.' }
        format.json { render :show, status: :created, location: @practica }
      else
        format.html { render :new }
        format.json { render json: @practica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practicas/1
  # PATCH/PUT /practicas/1.json
  def update
    respond_to do |format|
      if @practica.update(practica_params)
        format.html { redirect_to @practica, notice: 'Practica was successfully updated.' }
        format.json { render :show, status: :ok, location: @practica }
      else
        format.html { render :edit }
        format.json { render json: @practica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practicas/1
  # DELETE /practicas/1.json
  def destroy
    @practica.destroy
    respond_to do |format|
      format.html { redirect_to practicas_url, notice: 'Practica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practica
      @practica = Practica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practica_params
      params.require(:practica).permit(:nombre, :descripcion)
    end
end
