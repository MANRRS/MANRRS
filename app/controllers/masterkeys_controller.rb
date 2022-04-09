class MasterkeysController < ApplicationController
  before_action :authenticate_user!
  before_action :set_masterkey, only: %i[ show edit update destroy ]

  # GET /masterkeys or /masterkeys.json
  def index
    @masterkeys = Masterkey.all
  end

  # GET /masterkeys/1 or /masterkeys/1.json
  def show
  end

  # GET /masterkeys/new
  def new
    @masterkey = Masterkey.new
  end

  # GET /masterkeys/1/edit
  def edit
  end

  # POST /masterkeys or /masterkeys.json
  def create
    @masterkey = Masterkey.new(masterkey_params)

    respond_to do |format|
      if @masterkey.save
        format.html { redirect_to masterkey_url(@masterkey), notice: "Masterkey was successfully created." }
        format.json { render :show, status: :created, location: @masterkey }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @masterkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masterkeys/1 or /masterkeys/1.json
  def update
    respond_to do |format|
      if @masterkey.update(masterkey_params)
        format.html { redirect_to masterkey_url(@masterkey), notice: "Masterkey was successfully updated." }
        format.json { render :show, status: :ok, location: @masterkey }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @masterkey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masterkeys/1 or /masterkeys/1.json
  def destroy
    @masterkey.destroy

    respond_to do |format|
      format.html { redirect_to masterkeys_url, notice: "Masterkey was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masterkey
      @masterkey = Masterkey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def masterkey_params
      params.require(:masterkey).permit(:key)
    end
end
