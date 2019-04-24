class OzsController < ApplicationController
  before_action :set_oz, only: [:show, :edit, :update, :destroy]

  # GET /ozs
  # GET /ozs.json
  def index
    @ozs = Oz.all
  end

  # GET /ozs/1
  # GET /ozs/1.json
  def show
  end

  # GET /ozs/new
  def new
    @oz = Oz.new
  end

  # GET /ozs/1/edit
  def edit
  end

  # POST /ozs
  # POST /ozs.json
  def create
    @oz = Oz.new(oz_params)

    respond_to do |format|
      if @oz.save
        format.html { redirect_to @oz, notice: 'Oz was successfully created.' }
        format.json { render :show, status: :created, location: @oz }
      else
        format.html { render :new }
        format.json { render json: @oz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ozs/1
  # PATCH/PUT /ozs/1.json
  def update
    respond_to do |format|
      if @oz.update(oz_params)
        format.html { redirect_to @oz, notice: 'Oz was successfully updated.' }
        format.json { render :show, status: :ok, location: @oz }
      else
        format.html { render :edit }
        format.json { render json: @oz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ozs/1
  # DELETE /ozs/1.json
  def destroy
    @oz.destroy
    respond_to do |format|
      format.html { redirect_to ozs_url, notice: 'Oz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oz
      @oz = Oz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oz_params
      params.require(:oz).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10)
    end
end
