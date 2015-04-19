class Dom0sController < ApplicationController
  before_action :set_dom0, only: [:show, :edit, :update, :destroy]

  # GET /dom0s
  # GET /dom0s.json
  def index
    @dom0s = Dom0.all
  end

  # GET /dom0s/1
  # GET /dom0s/1.json
  def show
  end

  # GET /dom0s/new
  def new
    @dom0 = Dom0.new
  end

  # GET /dom0s/1/edit
  def edit
  end

  # POST /dom0s
  # POST /dom0s.json
  def create
    @dom0 = Dom0.new(dom0_params)

    respond_to do |format|
      if @dom0.save
        format.html { redirect_to @dom0, notice: 'Dom0 was successfully created.' }
        format.json { render :show, status: :created, location: @dom0 }
      else
        format.html { render :new }
        format.json { render json: @dom0.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dom0s/1
  # PATCH/PUT /dom0s/1.json
  def update
    respond_to do |format|
      if @dom0.update(dom0_params)
        format.html { redirect_to @dom0, notice: 'Dom0 was successfully updated.' }
        format.json { render :show, status: :ok, location: @dom0 }
      else
        format.html { render :edit }
        format.json { render json: @dom0.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dom0s/1
  # DELETE /dom0s/1.json
  def destroy
    @dom0.destroy
    respond_to do |format|
      format.html { redirect_to dom0s_url, notice: 'Dom0 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dom0
      @dom0 = Dom0.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dom0_params
      params[:dom0]
    end
end
