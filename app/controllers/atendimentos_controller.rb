class AtendimentosController < ApplicationController
  before_action :set_atendimento, only: [:show, :edit, :update, :destroy]

  # GET /atendimentos
  # GET /atendimentos.json
  def index
        if user_signed_in?
    @atendimentos = current_user.atendimentos(:user_id => current_user.id).order("created_at DESC")
      end
  end


  # GET /atendimentos/1
  # GET /atendimentos/1.json
  def show

  end

  # GET /atendimentos/new
  def new
   @atendimento = current_user.atendimentos.build
  end

  # GET /atendimentos/1/edit
  def edit
  end

  # POST /atendimentos
  # POST /atendimentos.json
  def create
    @atendimento = current_user.atendimentos.build(atendimento_params)
    

    respond_to do |format|
      if @atendimento.save
        format.html { redirect_to @atendimento, notice: 'Atendimento was successfully created.' }
        format.json { render :show, status: :created, location: @atendimento }
      else
        format.html { render :new }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendimentos/1
  # PATCH/PUT /atendimentos/1.json
  def update
    respond_to do |format|
      if @atendimento.update(atendimento_params)
        format.html { redirect_to @atendimento, notice: 'Atendimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @atendimento }
      else
        format.html { render :edit }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendimentos/1
  # DELETE /atendimentos/1.json
  def destroy
    @atendimento.destroy
    respond_to do |format|
      format.html { redirect_to atendimentos_url, notice: 'Atendimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendimento
      @atendimento = Atendimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atendimento_params
      params.require(:atendimento).permit(:categoria, :area, :data, :detalhes)
    end
end
