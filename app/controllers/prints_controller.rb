class PrintsController < ApplicationController
  before_action :set_print, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]

  # GET /prints or /prints.json
  def index
    @prints = Print.all.order('created_at DESC')
  end

  # GET /prints/1 or /prints/1.json
  def show
    
  end

  # GET /prints/new
  def new
    @print = current_user.prints.build
  end

  # GET /prints/1/edit
  def edit
  end

  # POST /prints or /prints.json
  def create
    @print = current_user.prints.build(print_params)

    respond_to do |format|
      if @print.save
        format.html { redirect_to @print, notice: "Print was successfully created." }
        format.json { render :show, status: :created, location: @print }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prints/1 or /prints/1.json
  def update
    respond_to do |format|
      if @print.update(print_params)
        format.html { redirect_to @print, notice: "Print was successfully updated." }
        format.json { render :show, status: :ok, location: @print }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prints/1 or /prints/1.json
  def destroy
    @print.destroy
    respond_to do |format|
      format.html { redirect_to prints_url, notice: "Print was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_print
      @print = Print.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def print_params
      params.require(:print).permit(:title, :description, :user_print)
    end
end
