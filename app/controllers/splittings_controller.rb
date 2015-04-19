class SplittingsController < ApplicationController
  before_action :set_splitting, only: [:show, :edit, :update, :destroy]

  # GET /splittings
  # GET /splittings.json
  def index
    @splittings = Splitting.all
  end

  # GET /splittings/1
  # GET /splittings/1.json
  def show
  end

  # GET /splittings/new
  def new
    @splitting = Splitting.new
  end

  # GET /splittings/1/edit
  def edit
  end

  # POST /splittings
  # POST /splittings.json
  def create
    @splitting = Splitting.new(splitting_params)

    respond_to do |format|
      if @splitting.save
        format.html { redirect_to @splitting, notice: 'Splitting was successfully created.' }
        format.json { render :show, status: :created, location: @splitting }
      else
        format.html { render :new }
        format.json { render json: @splitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /splittings/1
  # PATCH/PUT /splittings/1.json
  def update
    respond_to do |format|
      if @splitting.update(splitting_params)
        format.html { redirect_to @splitting, notice: 'Splitting was successfully updated.' }
        format.json { render :show, status: :ok, location: @splitting }
      else
        format.html { render :edit }
        format.json { render json: @splitting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splittings/1
  # DELETE /splittings/1.json
  def destroy
    @splitting.destroy
    respond_to do |format|
      format.html { redirect_to splittings_url, notice: 'Splitting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_splitting
      @splitting = Splitting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def splitting_params
      params[:splitting]
    end
end
