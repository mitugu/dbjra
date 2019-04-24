class CybsController < ApplicationController
  before_action :set_cyb, only: [:show, :edit, :update, :destroy]

  # GET /cybs
  # GET /cybs.json
  def index
    code = params[:code]
    nen = params[:nen]
    kai = params[:kai]
    nenngappi = params[:nenngappi] # race_nameパラメータを取得
    hiduke = params[:hiduke] # hidukeパラメータを取得
    @cybs = Cyb.where("a1 = ? AND a2 = ? AND a3 = ? AND a4 = ? AND a5 = ?",code, nen , kai, nenngappi, hiduke,)
    end

  # GET /cybs/1
  # GET /cybs/1.json
  def show
  end

  # GET /cybs/new
  def new
    @cyb = Cyb.new
  end

  # GET /cybs/1/edit
  def edit
  end

  # POST /cybs
  # POST /cybs.json
  def create
    @cyb = Cyb.new(cyb_params)

    respond_to do |format|
      if @cyb.save
        format.html { redirect_to @cyb, notice: 'Cyb was successfully created.' }
        format.json { render :show, status: :created, location: @cyb }
      else
        format.html { render :new }
        format.json { render json: @cyb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cybs/1
  # PATCH/PUT /cybs/1.json
  def update
    respond_to do |format|
      if @cyb.update(cyb_params)
        format.html { redirect_to @cyb, notice: 'Cyb was successfully updated.' }
        format.json { render :show, status: :ok, location: @cyb }
      else
        format.html { render :edit }
        format.json { render json: @cyb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cybs/1
  # DELETE /cybs/1.json
  def destroy
    @cyb.destroy
    respond_to do |format|
      format.html { redirect_to cybs_url, notice: 'Cyb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cyb
      @cyb = Cyb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cyb_params
      params.require(:cyb).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26)
    end
end
