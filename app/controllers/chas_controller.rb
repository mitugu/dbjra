class ChasController < ApplicationController
  before_action :set_cha, only: [:show, :edit, :update, :destroy]

  # GET /chas
  # GET /chas.json
  def index
    @chas = Cha.all
  end

  # GET /chas/1
  # GET /chas/1.json
  def show
  end

  # GET /chas/new
  def new
    @cha = Cha.new
  end

  # GET /chas/1/edit
  def edit
  end

  # POST /chas
  # POST /chas.json
  def create
    @cha = Cha.new(cha_params)

    respond_to do |format|
      if @cha.save
        format.html { redirect_to @cha, notice: 'Cha was successfully created.' }
        format.json { render :show, status: :created, location: @cha }
      else
        format.html { render :new }
        format.json { render json: @cha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chas/1
  # PATCH/PUT /chas/1.json
  def update
    respond_to do |format|
      if @cha.update(cha_params)
        format.html { redirect_to @cha, notice: 'Cha was successfully updated.' }
        format.json { render :show, status: :ok, location: @cha }
      else
        format.html { render :edit }
        format.json { render json: @cha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chas/1
  # DELETE /chas/1.json
  def destroy
    @cha.destroy
    respond_to do |format|
      format.html { redirect_to chas_url, notice: 'Cha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cha
      @cha = Cha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cha_params
      params.require(:cha).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27)
    end
end
