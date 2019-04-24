class KyisController < ApplicationController
  before_action :set_kyi, only: [:show, :edit, :update, :destroy]

  # GET /kyis
  # GET /kyis.json
  def index
    code = params[:code]
    nen = params[:nen]
    kai = params[:kai]
    nenngappi = params[:nenngappi] # race_nameパラメータを取得
    hiduke = params[:hiduke] # hidukeパラメータを取得
   @kyis = Kyi.where("a1 = ? AND a2 = ? AND a3 = ? AND a4 = ? AND a5 = ?",code, nen , kai, nenngappi, hiduke,)
  end

  # GET /kyis/1
  # GET /kyis/1.json
  def show
  end

  # GET /kyis/new
  def new
    @kyi = Kyi.new
  end

  # GET /kyis/1/edit
  def edit
  end

  # POST /kyis
  # POST /kyis.json
  def create
    @kyi = Kyi.new(kyi_params)

    respond_to do |format|
      if @kyi.save
        format.html { redirect_to @kyi, notice: 'Kyi was successfully created.' }
        format.json { render :show, status: :created, location: @kyi }
      else
        format.html { render :new }
        format.json { render json: @kyi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kyis/1
  # PATCH/PUT /kyis/1.json
  def update
    respond_to do |format|
      if @kyi.update(kyi_params)
        format.html { redirect_to @kyi, notice: 'Kyi was successfully updated.' }
        format.json { render :show, status: :ok, location: @kyi }
      else
        format.html { render :edit }
        format.json { render json: @kyi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kyis/1
  # DELETE /kyis/1.json
  def destroy
    @kyi.destroy
    respond_to do |format|
      format.html { redirect_to kyis_url, notice: 'Kyi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kyi
      @kyi = Kyi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kyi_params
      params.require(:kyi).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27, :a28, :a29, :a30, :a31, :a32, :a33, :a34, :a35, :a36, :a37, :a38, :a39, :a40, :a41, :a42, :a43, :a44, :a45, :a46, :a47, :a48, :a49, :a50, :a51, :a52, :a53, :a54, :a55, :a56, :a57, :a58, :a59, :a60, :a61, :a62, :a63, :a64, :a65, :a66, :a67, :a68, :a69, :a70, :a71, :a72, :a73, :a74, :a75, :a76, :a77, :a78, :a79, :a80, :a81, :a82, :a83, :a84, :a85, :a86, :a87, :a88, :a89, :a90, :a91, :a92, :a93, :a94, :a95, :a96, :a97, :a98, :a99, :a100, :a101, :a102, :a103, :a104, :a105, :a106, :a107, :a108, :a109, :a110, :a111, :a112, :a113, :a114, :a115, :a116, :a117, :a118, :a119, :a120, :a121, :a122, :a123, :a124, :a125, :a126, :a127, :a128, :a129, :a130, :a131, :a132, :a133, :a134, :a135, :a136)
    end
end
