class ZedsController < ApplicationController
  before_action :set_zed, only: [:show, :edit, :update, :destroy]

  # GET /zeds
  # GET /zeds.json
  def index
    @zeds = Zed.all
  end

  # GET /zeds/1
  # GET /zeds/1.json
  def show
  end

  # GET /zeds/new
  def new
    @zed = Zed.new
  end

  # GET /zeds/1/edit
  def edit
  end

  # POST /zeds
  # POST /zeds.json
  def create
    @zed = Zed.new(zed_params)

    respond_to do |format|
      if @zed.save
        format.html { redirect_to @zed, notice: 'Zed was successfully created.' }
        format.json { render :show, status: :created, location: @zed }
      else
        format.html { render :new }
        format.json { render json: @zed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zeds/1
  # PATCH/PUT /zeds/1.json
  def update
    respond_to do |format|
      if @zed.update(zed_params)
        format.html { redirect_to @zed, notice: 'Zed was successfully updated.' }
        format.json { render :show, status: :ok, location: @zed }
      else
        format.html { render :edit }
        format.json { render json: @zed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zeds/1
  # DELETE /zeds/1.json
  def destroy
    @zed.destroy
    respond_to do |format|
      format.html { redirect_to zeds_url, notice: 'Zed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zed
      @zed = Zed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zed_params
      params.require(:zed).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27, :a28, :a29, :a30, :a31, :a32, :a33, :a34, :a35, :a36, :a37, :a38, :a39, :a40, :a41, :a42, :a43, :a44, :a45, :a46, :a47, :a48, :a49, :a50, :a51, :a52, :a53, :a54, :a55, :a56, :a57, :a58, :a59, :a60, :a61)
    end
end
