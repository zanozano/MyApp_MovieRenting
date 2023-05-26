class ArriendosController < ApplicationController
  before_action :set_arriendo, only: %i[ show edit update destroy ]

  # GET /arriendos or /arriendos.json
  def index
    @arriendos = Arriendo.all
  end

  # GET /arriendos/1 or /arriendos/1.json
def show
  @arriendo = Arriendo.find(params[:id])
  @arriendos = [@arriendo]  # Asigna el arriendo a la variable @arriendos como una colección
end

  # GET /arriendos/new
  def new
    @arriendo = Arriendo.new
  end

  # GET /arriendos/1/edit
  def edit
  end

  # POST /arriendos or /arriendos.json
  def create
    @arriendo = Arriendo.new(arriendo_params)

    respond_to do |format|
      if @arriendo.save
        format.html { redirect_to arriendo_url(@arriendo), notice: "Arriendo fue creado satisfactoriamente." }
        format.json { render :show, status: :created, location: @arriendo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arriendos/1 or /arriendos/1.json
  def update
    respond_to do |format|
      if @arriendo.update(arriendo_params)
        format.html { redirect_to arriendo_url(@arriendo), notice: "Arriendo fue actualizado satisfactoriamente." }
        format.json { render :show, status: :ok, location: @arriendo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arriendos/1 or /arriendos/1.json
  def destroy
    @arriendo.destroy

    respond_to do |format|
      format.html { redirect_to arriendos_url, notice: "Arriendo fue eliminado satisfactoriamente." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arriendo
      @arriendo = Arriendo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def arriendo_params
    #   params.fetch(:arriendo, {})
    # end

    def arriendo_params
  params.require(:arriendo).permit(:cliente_id, :pelicula_id)
  end
end
