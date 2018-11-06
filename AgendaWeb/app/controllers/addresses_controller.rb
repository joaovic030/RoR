class AddressesController < ApplicationController
  before_action :set_adress, only: [:show, :edit, :update, :destroy]

  # GET /Addresses
  # GET /Addresses.json
  def index
    @addresses = Address.all
  end

  # GET /Addresses/1
  # GET /Addresses/1.json
  def show
  end

  # GET /Addresses/new
  def new
    @address = Address.new
  end

  # GET /Addresses/1/edit
  def edit
  end

  # POST /Addresses
  # POST /Addresses.json
  def create
    @address = Address.new(adress_params)

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Addresses/1
  # PATCH/PUT /Addresses/1.json
  def update
    respond_to do |format|
      if @address.update(adress_params)
        format.html { redirect_to @address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Addresses/1
  # DELETE /Addresses/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adress_params
      params.require(:address).permit(:street, :city, :state, :contact_id)
    end
end
