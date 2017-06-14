class ConsultorioNsController < ApplicationController
  before_action :set_consultorio_n, only: [:show, :edit, :update, :destroy]

  # GET /consultorio_ns
  # GET /consultorio_ns.json
  def index
    @consultorio_ns = ConsultorioN.all
  end

  # GET /consultorio_ns/1
  # GET /consultorio_ns/1.json
  def show
  end

  # GET /consultorio_ns/new
  def new
    @consultorio_n = ConsultorioN.new
  end

  # GET /consultorio_ns/1/edit
  def edit
  end

  # POST /consultorio_ns
  # POST /consultorio_ns.json
  def create
    @consultorio_n = ConsultorioN.new(consultorio_n_params)

    respond_to do |format|
      if @consultorio_n.save
        format.html { redirect_to @consultorio_n, notice: 'Consultorio n was successfully created.' }
        format.json { render :show, status: :created, location: @consultorio_n }
      else
        format.html { render :new }
        format.json { render json: @consultorio_n.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultorio_ns/1
  # PATCH/PUT /consultorio_ns/1.json
  def update
    respond_to do |format|
      if @consultorio_n.update(consultorio_n_params)
        format.html { redirect_to @consultorio_n, notice: 'Consultorio n was successfully updated.' }
        format.json { render :show, status: :ok, location: @consultorio_n }
      else
        format.html { render :edit }
        format.json { render json: @consultorio_n.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultorio_ns/1
  # DELETE /consultorio_ns/1.json
  def destroy
    @consultorio_n.destroy
    respond_to do |format|
      format.html { redirect_to consultorio_ns_url, notice: 'Consultorio n was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultorio_n
      @consultorio_n = ConsultorioN.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultorio_n_params
      params.require(:consultorio_n).permit(:numero, :tel)
    end
end
