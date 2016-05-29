class AdmsController < ApplicationController
  before_action :set_adm, only: [:show, :edit, :update, :destroy]

  # GET /adms
  # GET /adms.json
  def index
    @adms = Adm.all
  end

  # GET /adms/1
  # GET /adms/1.json
  def show
  end

  # GET /adms/new
  def new
    @adm = Adm.new
  end

  # GET /adms/1/edit
  def edit
  end

  # POST /adms
  # POST /adms.json
  def create
    @adm = Adm.new(adm_params)

    respond_to do |format|
      if @adm.save
        format.html { redirect_to @adm, notice: 'Administrador criado com sucesso!.' }
        format.json { render :show, status: :created, location: @adm }
      else
        format.html { render :new }
        format.json { render json: @adm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adms/1
  # PATCH/PUT /adms/1.json
  def update
    respond_to do |format|
      if @adm.update(adm_params)
        format.html { redirect_to @adm, notice: 'Administrador was successfully updated.' }
        format.json { render :show, status: :ok, location: @adm }
      else
        format.html { render :edit }
        format.json { render json: @adm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adms/1
  # DELETE /adms/1.json
  def destroy
    @adm.destroy
    respond_to do |format|
      format.html { redirect_to adms_url, notice: 'Administrador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adm
      @adm = Adm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adm_params
      params.require(:adm).permit(:nome, :senha, :registro)
    end
end
