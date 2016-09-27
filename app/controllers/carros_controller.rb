class CarrosController < ApplicationController
  before_action :set_carro, only: [:show, :edit, :update, :destroy]

  # GET /carros
  # GET /carros.json
  def index
    @carros = Carro.all
  end

  # GET /carros/1
  # GET /carros/1.json
  def show
  end

  # GET /carros/new
  def new
    @carro = Carro.new
  end

  # GET /carros/1/edit
  def edit
  end

def acomprar
  clienteexiste = false;
  vendedorexiste = false;
   @data = params[:rutcliente]
     if Cliente.where(rut: @data).exists?
      @name = Cliente.where(rut: @data).last.nombre
      clienteexiste = true;
    else
      @name = "No existe ningún Cliente con este Rut."
        clienteexiste = false;
     end

@data2 = params[:rutvendedor]
     if Vendedor.where(rut: @data2).exists?
      @name2 = Vendedor.where(rut: @data2).last.nombre
      vendedorexiste = true;
    else
      @name2 = "No existe ningún Vendedor con este Rut."
      vendedorexiste = false;
     end

if clienteexiste == true and vendedorexiste == true
@factura = Factura.new({
   
   :cliente_id => Cliente.where(rut: @data).last.id,
   :vendedor_id => Vendedor.where(rut: @data2).last.id,
});
@factura.save();
@portcompra = true
else 
@portcompra = false

end


  end

  # POST /carros
  # POST /carros.json
  def create
    @carro = Carro.new(carro_params)

    respond_to do |format|
      if @carro.save
        format.html { redirect_to @carro, notice: 'Carro was successfully created.' }
        format.json { render :show, status: :created, location: @carro }
      else
        format.html { render :new }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carros/1
  # PATCH/PUT /carros/1.json
  def update
    respond_to do |format|
      if @carro.update(carro_params)
        format.html { redirect_to @carro, notice: 'Carro was successfully updated.' }
        format.json { render :show, status: :ok, location: @carro }
      else
        format.html { render :edit }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carros/1
  # DELETE /carros/1.json
  def destroy
    @carro.destroy
    respond_to do |format|
      format.html { redirect_to carros_url, notice: 'El producto fue quitado sin problemas.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carro
      @carro = Carro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carro_params
      params.require(:carro).permit(:producto_id)
    end
end
