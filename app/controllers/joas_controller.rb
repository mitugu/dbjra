class JoasController < ApplicationController
  before_action :set_joa, only: [:show, :edit, :update, :destroy]

  # GET /joas
  # GET /joas.json
  def index
    @joas = Joa.all
  end

  # GET /joas/1
  # GET /joas/1.json
  def show
  end

  # GET /joas/new
  def new
    @joa = Joa.new
  end

  # GET /joas/1/edit
  def edit
  end

  # POST /joas
  # POST /joas.json
  def create
    @joa = Joa.new(joa_params)

    respond_to do |format|
      if @joa.save
        format.html { redirect_to @joa, notice: 'Joa was successfully created.' }
        format.json { render :show, status: :created, location: @joa }
      else
        format.html { render :new }
        format.json { render json: @joa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joas/1
  # PATCH/PUT /joas/1.json
  def update
    respond_to do |format|
      if @joa.update(joa_params)
        format.html { redirect_to @joa, notice: 'Joa was successfully updated.' }
        format.json { render :show, status: :ok, location: @joa }
      else
        format.html { render :edit }
        format.json { render json: @joa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joas/1
  # DELETE /joas/1.json
  def destroy
    @joa.destroy
    respond_to do |format|
      format.html { redirect_to joas_url, notice: 'Joa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joa
      @joa = Joa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joa_params
      params.require(:joa).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, :a11, :a12, :a13, :a14, :a15, :a16, :a17, :a18, :a19, :a20, :a21, :a22, :a23, :a24, :a25)
    end
end
