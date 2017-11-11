class EmpleadorsController < ApplicationController
  before_action :set_empleador, only: [:show, :edit, :update, :destroy]

  # GET /empleadors
  # GET /empleadors.json
  def index
    @empleadors = Empleador.all
  end

  # GET /empleadors/1
  # GET /empleadors/1.json
  def show
  end

  # GET /empleadors/new
  def new
    @empleador = Empleador.new
  end

  # GET /empleadors/1/edit
  def edit
  end

  # POST /empleadors
  # POST /empleadors.json
  def create
    @empleador = Empleador.new(empleador_params)

    respond_to do |format|
      if @empleador.save
        format.html { redirect_to @empleador, notice: 'Empleador was successfully created.' }
        format.json { render :show, status: :created, location: @empleador }
      else
        format.html { render :new }
        format.json { render json: @empleador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empleadors/1
  # PATCH/PUT /empleadors/1.json
  def update
    respond_to do |format|
      if @empleador.update(empleador_params)
        format.html { redirect_to @empleador, notice: 'Empleador was successfully updated.' }
        format.json { render :show, status: :ok, location: @empleador }
      else
        format.html { render :edit }
        format.json { render json: @empleador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empleadors/1
  # DELETE /empleadors/1.json
  def destroy
    @empleador.destroy
    respond_to do |format|
      format.html { redirect_to empleadors_url, notice: 'Empleador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empleador
      @empleador = Empleador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empleador_params
      params.require(:empleador).permit(:nombres, :apellidos, :telefono, :correo)
    end
end
