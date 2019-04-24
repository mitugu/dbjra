class BacsController < ApplicationController
  before_action :set_bac, only: [:show, :edit, :update, :destroy]

  # GET /bacs
  # GET /bacs.json
  def index
    race_name = params[:race_name] # race_nameパラメータを取得
    hiduke = params[:hiduke] # hidukeパラメータを取得
   @bacs = Bac.where("a5 = ? AND a4 = ? ", race_name, hiduke)
   umamei = params[:umamei]
   @kyis = Kyi.all
  end

  # GET /bacs/1
  # GET /bacs/1.json
  def show
  end

  # GET /bacs/new
  def new
    @bac = Bac.new
  end

  # GET /bacs/1/edit
  def edit
  end

  # POST /bacs
  # POST /bacs.json
  def create
    @bac = Bac.new(bac_params)

    respond_to do |format|
      if @bac.save
        format.html { redirect_to @bac, notice: 'Bac was successfully created.' }
        format.json { render :show, status: :created, location: @bac }
      else
        format.html { render :new }
        format.json { render json: @bac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bacs/1
  # PATCH/PUT /bacs/1.json
  def update
    respond_to do |format|
      if @bac.update(bac_params)
        format.html { redirect_to @bac, notice: 'Bac was successfully updated.' }
        format.json { render :show, status: :ok, location: @bac }
      else
        format.html { render :edit }
        format.json { render json: @bac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bacs/1
  # DELETE /bacs/1.json
  def destroy
    @bac.destroy
    respond_to do |format|
      format.html { redirect_to bacs_url, notice: 'Bac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bac
      @bac = Bac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bac_params
      params.require(:bac).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27, :a28, :a29, :a30, :a31, :a32, :a33, :a34, :a35)
    end
end
