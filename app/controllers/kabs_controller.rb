class KabsController < ApplicationController
  before_action :set_kab, only: [:show, :edit, :update, :destroy]

  # GET /kabs
  # GET /kabs.json
  def index
    @kabs = Kab.all
  end

  # GET /kabs/1
  # GET /kabs/1.json
  def show
  end

  # GET /kabs/new
  def new
    @kab = Kab.new
  end

  # GET /kabs/1/edit
  def edit
  end

  # POST /kabs
  # POST /kabs.json
  def create
    @kab = Kab.new(kab_params)

    respond_to do |format|
      if @kab.save
        format.html { redirect_to @kab, notice: 'Kab was successfully created.' }
        format.json { render :show, status: :created, location: @kab }
      else
        format.html { render :new }
        format.json { render json: @kab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kabs/1
  # PATCH/PUT /kabs/1.json
  def update
    respond_to do |format|
      if @kab.update(kab_params)
        format.html { redirect_to @kab, notice: 'Kab was successfully updated.' }
        format.json { render :show, status: :ok, location: @kab }
      else
        format.html { render :edit }
        format.json { render json: @kab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kabs/1
  # DELETE /kabs/1.json
  def destroy
    @kab.destroy
    respond_to do |format|
      format.html { redirect_to kabs_url, notice: 'Kab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kab
      @kab = Kab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kab_params
      params.require(:kab).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27, :a28, :a29, :a30, :a31, :a32, :a33)
    end
end
