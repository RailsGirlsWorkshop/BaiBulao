class BaisController < ApplicationController
  before_action :set_bai, only: [:show, :edit, :update, :destroy]

  # GET /bais
  # GET /bais.json
  def index
    @bais = Bai.all
  end

  # GET /bais/1
  # GET /bais/1.json
  def show
  end

  # GET /bais/new
  def new
    @bai = Bai.new
  end

  # GET /bais/1/edit
  def edit
  end

  # POST /bais
  # POST /bais.json
  def create
    @bai = Bai.new(bai_params)

    respond_to do |format|
      if @bai.save
        format.html { redirect_to @bai, notice: 'Bai was successfully created.' }
        format.json { render :show, status: :created, location: @bai }
      else
        format.html { render :new }
        format.json { render json: @bai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bais/1
  # PATCH/PUT /bais/1.json
  def update
    respond_to do |format|
      if @bai.update(bai_params)
        format.html { redirect_to @bai, notice: 'Bai was successfully updated.' }
        format.json { render :show, status: :ok, location: @bai }
      else
        format.html { render :edit }
        format.json { render json: @bai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bais/1
  # DELETE /bais/1.json
  def destroy
    @bai.destroy
    respond_to do |format|
      format.html { redirect_to bais_url, notice: 'Bai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bai
      @bai = Bai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bai_params
      params.require(:bai).permit!
    end
end
