class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
  #Operadores
  @pesquisas = Pesquisa.find(1)
  puts "Nome da pesquisa: "
  puts @pesquisas.nome_pesquisa

      operador_email      = params[:operador_email]
      operador_idade      = params[:operador_idade]
      operador_aritmetico_idade = params[:operador_aritmetico_idade]
      operador_estado     = params[:operador_estado]
      operador_cargo      = params[:operador_cargo]
  
  #Atributos
      nome   = tipo_like(params[:like_nome].to_i,   params[:nome  ])       
      email  = tipo_like(params[:like_email].to_i,  params[:email ])
      idade  = params[:idade]
      estado = tipo_like(params[:like_estado].to_i, params[:estado])
      cargo  = tipo_like(params[:like_cargo].to_i,  params[:cargo ])

   #consulta dinâmica
     conditions = String.new
     wheres = Array.new
    if nome.present?
        conditions << " AND "  unless conditions.length == 0
        conditions << "nome like ? "
        wheres << nome
    end
     if email.present?
        conditions << " " + operador_email + " " unless conditions.length == 0
        conditions << "email like ? "
        wheres << email
    end
     if idade.present?
        conditions << " " + operador_idade + " " unless conditions.length == 0
        conditions << "idade "+ operador_aritmetico_idade +" ? "
        wheres << idade
    end
     if estado.present?
        conditions << " " + operador_estado + " " unless conditions.length == 0
        conditions << "estado like ? "
        wheres << estado
    end
     if cargo.present?
        conditions << " " + operador_cargo + " " unless conditions.length == 0
        conditions << "cargo like ? "
        wheres << cargo
    end
    wheres.insert(0, conditions)

    if(conditions.length == 0)
        @contacts = Contact.all
    else
       @contacts = Contact.where(wheres)
    end
  
   
  end
  #Método responsável <!--“Igual a”, “contém”, “começa com” e “termina com”-->
  def tipo_like(quality, value)
      # Return a case.
      return case quality
          when 0 then value= value
          when 1 then value = "%"+value + "%"
          when 2 then value = value + "%"
          when 3 then value = "%"+ value
          else "Opçao Inválida"
      end
    end
  

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
     params.require(:contact).permit(:nome, :email, :idade, :estado, :cargo)
    end
end
