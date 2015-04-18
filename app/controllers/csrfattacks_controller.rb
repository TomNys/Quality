class CsrfattacksController < ApplicationController
  before_action :set_csrfattack, only: [:show, :edit, :update, :destroy]
  after_filter :allow_iframe
  # GET /csrfattacks
  # GET /csrfattacks.json
  def index
    @csrfattacks = Csrfattack.all
  end

  # GET /csrfattacks/1
  # GET /csrfattacks/1.json
  def show
  end

  # GET /csrfattacks/new
  def new
    @csrfattack = Csrfattack.new
  end

  # GET /csrfattacks/1/edit
  def edit

  end


  # POST /csrfattacks
  # POST /csrfattacks.json
  def create
    @csrfattack = Csrfattack.new(csrfattack_params)

    respond_to do |format|
      if @csrfattack.save
        format.html { redirect_to @csrfattack, notice: 'Csrfattack was successfully created.' }
        format.json { render :show, status: :created, location: @csrfattack }
      else
        format.html { render :new }
        format.json { render json: @csrfattack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csrfattacks/1
  # PATCH/PUT /csrfattacks/1.json
  def update

    @csrfattack.update(csrfattack_params)

    redirect_to csrfattacks_path, notice: 'your vote has been cast.'
  end

  # DELETE /csrfattacks/1
  # DELETE /csrfattacks/1.json
  def destroy
    @csrfattack.destroy
    respond_to do |format|
      format.html { redirect_to csrfattacks_url, notice: 'Csrfattack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csrfattack
      @csrfattack = Csrfattack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csrfattack_params
      params.require(:csrfattack).permit(:professor, :vote)
    end

    def allow_iframe
      response.headers.delete "X-Frame-Options"
    end
end
