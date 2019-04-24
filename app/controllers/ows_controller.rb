class OwsController < ApplicationController
  before_action :set_ow, only: [:show, :edit, :update, :destroy]

  # GET /ows
  # GET /ows.json
  def index
    @ows = Ow.all
  end

  # GET /ows/1
  # GET /ows/1.json
  def show
  end

  # GET /ows/new
  def new
    @ow = Ow.new
  end

  # GET /ows/1/edit
  def edit
  end

  # POST /ows
  # POST /ows.json
  def create
    @ow = Ow.new(ow_params)

    respond_to do |format|
      if @ow.save
        format.html { redirect_to @ow, notice: 'Ow was successfully created.' }
        format.json { render :show, status: :created, location: @ow }
      else
        format.html { render :new }
        format.json { render json: @ow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ows/1
  # PATCH/PUT /ows/1.json
  def update
    respond_to do |format|
      if @ow.update(ow_params)
        format.html { redirect_to @ow, notice: 'Ow was successfully updated.' }
        format.json { render :show, status: :ok, location: @ow }
      else
        format.html { render :edit }
        format.json { render json: @ow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ows/1
  # DELETE /ows/1.json
  def destroy
    @ow.destroy
    respond_to do |format|
      format.html { redirect_to ows_url, notice: 'Ow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ow
      @ow = Ow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ow_params
      params.require(:ow).permit(:a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9)
    end
end
