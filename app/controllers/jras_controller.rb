class JrasController < ApplicationController
  before_action :set_jra, only: [:show, :edit, :update, :destroy]

  # GET /jras
  # GET /jras.json
  def index
    @jras = Jra.all
  end

  # GET /jras/1
  # GET /jras/1.json
  def show
  end

  # GET /jras/new
  def new
    @jra = Jra.new
  end

  # GET /jras/1/edit
  def edit
  end

  # POST /jras
  # POST /jras.json
  def create
    @jra = Jra.new(jra_params)

    respond_to do |format|
      if @jra.save
        format.html { redirect_to @jra, notice: 'Jra was successfully created.' }
        format.json { render :show, status: :created, location: @jra }
      else
        format.html { render :new }
        format.json { render json: @jra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jras/1
  # PATCH/PUT /jras/1.json
  def update
    respond_to do |format|
      if @jra.update(jra_params)
        format.html { redirect_to @jra, notice: 'Jra was successfully updated.' }
        format.json { render :show, status: :ok, location: @jra }
      else
        format.html { render :edit }
        format.json { render json: @jra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jras/1
  # DELETE /jras/1.json
  def destroy
    @jra.destroy
    respond_to do |format|
      format.html { redirect_to jras_url, notice: 'Jra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jra
      @jra = Jra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jra_params
      params.require(:jra).permit(:code, :year, :the_time, :day, :race, :race_day, :race_time, :distance, :baba, :turn, :track, :condition, :class, :race_condraceition, :weight, :grade)
    end
end
