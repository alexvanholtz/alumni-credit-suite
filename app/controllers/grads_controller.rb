class GradsController < ApplicationController
  before_action :set_grad, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Grads", :grads_path

  # GET /grads
  # GET /grads.json
  def index
    @grads = Grad.all
  end

  # GET /grads/1
  # GET /grads/1.json
  def show
    add_breadcrumb @grad.full_name, :grad_path
  end

  # GET /grads/new
  def new
    add_breadcrumb "New", :new_grad_path
    @grad = Grad.new
  end

  # GET /grads/1/edit
  def edit
    add_breadcrumb @grad.full_name, :grad_path
    add_breadcrumb "Edit", :edit_grad_path
  end

  # POST /grads
  # POST /grads.json
  def create
    @grad = Grad.new(grad_params)

    respond_to do |format|
      if @grad.save
        format.html { redirect_to @grad, notice: 'Grad was successfully created.' }
        format.json { render :show, status: :created, location: @grad }
      else
        format.html { render :new }
        format.json { render json: @grad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grads/1
  # PATCH/PUT /grads/1.json
  def update
    respond_to do |format|
      if @grad.update(grad_params)
        format.html { redirect_to @grad, notice: 'Grad was successfully updated.' }
        format.json { render :show, status: :ok, location: @grad }
      else
        format.html { render :edit }
        format.json { render json: @grad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grads/1
  # DELETE /grads/1.json
  def destroy
    @grad.destroy
    respond_to do |format|
      format.html { redirect_to grads_url, notice: 'Grad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grad
      @grad = Grad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grad_params
      params.require(:grad).permit(:first_name, :last_name, :student_num, :email, :graduation_date, :notes)
    end
end
