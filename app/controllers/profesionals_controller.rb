class ProfesionalsController < ApplicationController
  before_action :set_profesional, only: [:show, :edit, :update, :destroy]

  # GET /profesionals
  # GET /profesionals.json
  def index
    @profesionals = Profesional.all
  end

  # GET /profesionals/1
  # GET /profesionals/1.json
  def show
  end

  # GET /profesionals/new
  def new
    @profesional = Profesional.new
  end

  # GET /profesionals/1/edit
  def edit
  end

  # POST /profesionals
  # POST /profesionals.json
  def create
    @profesional = Profesional.new(profesional_params)

    respond_to do |format|
      if @profesional.save
        format.html { redirect_to @profesional, notice: 'Profesional was successfully created.' }
        format.json { render :show, status: :created, location: @profesional }
      else
        format.html { render :new }
        format.json { render json: @profesional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesionals/1
  # PATCH/PUT /profesionals/1.json
  def update
    respond_to do |format|
      if @profesional.update(profesional_params)
        format.html { redirect_to @profesional, notice: 'Profesional was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesional }
      else
        format.html { render :edit }
        format.json { render json: @profesional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesionals/1
  # DELETE /profesionals/1.json
  def destroy
    @profesional.destroy
    respond_to do |format|
      format.html { redirect_to profesionals_url, notice: 'Profesional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesional
      @profesional = Profesional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesional_params
      params.require(:profesional).permit(:nombre, :dni, :email, :telefono)
    end
end
