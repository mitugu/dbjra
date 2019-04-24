class KkasController < ApplicationController
  before_action :set_kka, only: [:show, :edit, :update, :destroy]

  # GET /kkas
  # GET /kkas.json
  def index
    @kkas = Kka.all
  end

  # GET /kkas/1
  # GET /kkas/1.json
  def show
  end

  # GET /kkas/new
  def new
    @kka = Kka.new
  end

  # GET /kkas/1/edit
  def edit
  end

  # POST /kkas
  # POST /kkas.json
  def create
    @kka = Kka.new(kka_params)

    respond_to do |format|
      if @kka.save
        format.html { redirect_to @kka, notice: 'Kka was successfully created.' }
        format.json { render :show, status: :created, location: @kka }
      else
        format.html { render :new }
        format.json { render json: @kka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kkas/1
  # PATCH/PUT /kkas/1.json
  def update
    respond_to do |format|
      if @kka.update(kka_params)
        format.html { redirect_to @kka, notice: 'Kka was successfully updated.' }
        format.json { render :show, status: :ok, location: @kka }
      else
        format.html { render :edit }
        format.json { render json: @kka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kkas/1
  # DELETE /kkas/1.json
  def destroy
    @kka.destroy
    respond_to do |format|
      format.html { redirect_to kkas_url, notice: 'Kka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kka
      @kka = Kka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kka_params
      params.require(:kka).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25, :a26, :a27, :a28, :a29, :a30, :a31, :a32, :a33, :a34, :a35, :a36, :a37)
    end
end
