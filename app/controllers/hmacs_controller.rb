class HmacsController < ApplicationController
  before_action :set_hmac, only: [:show, :edit, :update, :destroy]

  # GET /hmacs
  # GET /hmacs.json
  def index
    @hmacs = Hmac.all
  end

  # GET /hmacs/1
  # GET /hmacs/1.json
  def show
  end

  # GET /hmacs/new
  def new
    @hmac = Hmac.new
  end

  # GET /hmacs/1/edit
  def edit
  end

  # POST /hmacs
  # POST /hmacs.json
  def create
    @hmac = Hmac.new(hmac_params)
    @hmac.digest = OpenSSL::Digest.new(@hmac.hashalgorithme)
    @hmac.hmac = OpenSSL::HMAC.new(@hmac.key, OpenSSL::Digest.new(@hmac.hashalgorithme))
    #@hmac.digest = OpenSSL::Digest.new(@hmac.hashalgorithme)
    #@hmac.hmac = OpenSSL::HMAC.digest(@hmac.digest, @hmac.key, @hmac.secret)

    respond_to do |format|
      if @hmac.save
        format.html { redirect_to @hmac, notice: 'Hmac was successfully created.' }
        format.json { render :show, status: :created, location: @hmac }
      else
        format.html { render :new }
        format.json { render json: @hmac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hmacs/1
  # PATCH/PUT /hmacs/1.json
  def update
    respond_to do |format|
      if @hmac.update(hmac_params)
        format.html { redirect_to @hmac, notice: 'Hmac was successfully updated.' }
        format.json { render :show, status: :ok, location: @hmac }
      else
        format.html { render :edit }
        format.json { render json: @hmac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hmacs/1
  # DELETE /hmacs/1.json
  def destroy
    @hmac.destroy
    respond_to do |format|
      format.html { redirect_to hmacs_url, notice: 'Hmac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hmac
      @hmac = Hmac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hmac_params
      params.require(:hmac).permit(:key, :secret, :hashalgorithme)
    end
end
