class PesquisasController < ApplicationController
  before_action :set_pesquisa, only: [:show, :edit, :update, :destroy]

  # GET /pesquisas
  # GET /pesquisas.json
  def index
    @pesquisas = Pesquisa.all
  end

  # GET /pesquisas/1
  # GET /pesquisas/1.json
  def show
  end

  # GET /pesquisas/new
  def new
    @pesquisa = Pesquisa.new
  end

  # GET /pesquisas/1/edit
  def edit
  end

  # POST /pesquisas
  # POST /pesquisas.json
  def create
    @pesquisa = Pesquisa.new(pesquisa_params)

    respond_to do |format|
      if @pesquisa.save
        format.html { redirect_to @pesquisa, notice: 'Pesquisa was successfully created.' }
        format.json { render :show, status: :created, location: @pesquisa }
      else
        format.html { render :new }
        format.json { render json: @pesquisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pesquisas/1
  # PATCH/PUT /pesquisas/1.json
  def update
    respond_to do |format|
      if @pesquisa.update(pesquisa_params)
        format.html { redirect_to @pesquisa, notice: 'Pesquisa was successfully updated.' }
        format.json { render :show, status: :ok, location: @pesquisa }
      else
        format.html { render :edit }
        format.json { render json: @pesquisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesquisas/1
  # DELETE /pesquisas/1.json
  def destroy
    @pesquisa.destroy
    respond_to do |format|
      format.html { redirect_to pesquisas_url, notice: 'Pesquisa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesquisa
      @pesquisa = Pesquisa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pesquisa_params
      params.require(:pesquisa).permit(:nome_pesquisa, :nome, :like_nome, :operador_email, :email, :like_email, :operador_idade, :idade, :operador_aritmetico_idade, :operador_estado, :estado, :like_estado, :operador_cargo, :cargo, :like_cargo)
    end
end
