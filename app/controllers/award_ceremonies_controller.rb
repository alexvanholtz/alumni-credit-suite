class AwardCeremoniesController < ApplicationController
  before_action :set_award_ceremony, only: [:show, :edit, :update, :destroy]

  add_breadcrumb "Home", :root_path
  add_breadcrumb "Award Ceremonies", :award_ceremonies_path

  # GET /award_ceremonies
  # GET /award_ceremonies.json
  def index
    @award_ceremonies = AwardCeremony.all
  end

  # GET /award_ceremonies/1
  # GET /award_ceremonies/1.json
  def show
    add_breadcrumb @award_ceremony.ceremony, :award_ceremony_path
  end

  # GET /award_ceremonies/new
  def new
    @award_ceremony = AwardCeremony.new
  end

  # GET /award_ceremonies/1/edit
  def edit
    add_breadcrumb @award_ceremony.ceremony, :award_ceremony_path
    add_breadcrumb 'Edit', :edit_award_ceremony_path
  end

  # POST /award_ceremonies
  # POST /award_ceremonies.json
  def create
    @award_ceremony = AwardCeremony.new(award_ceremony_params)

    respond_to do |format|
      if @award_ceremony.save
        format.html { redirect_to @award_ceremony, notice: 'Award ceremony was successfully created.' }
        format.json { render :show, status: :created, location: @award_ceremony }
      else
        format.html { render :new }
        format.json { render json: @award_ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /award_ceremonies/1
  # PATCH/PUT /award_ceremonies/1.json
  def update
    respond_to do |format|
      if @award_ceremony.update(award_ceremony_params)
        format.html { redirect_to @award_ceremony, notice: 'Award ceremony was successfully updated.' }
        format.json { render :show, status: :ok, location: @award_ceremony }
      else
        format.html { render :edit }
        format.json { render json: @award_ceremony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /award_ceremonies/1
  # DELETE /award_ceremonies/1.json
  def destroy
    @award_ceremony.destroy
    respond_to do |format|
      format.html { redirect_to award_ceremonies_url, notice: 'Award ceremony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award_ceremony
      @award_ceremony = AwardCeremony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def award_ceremony_params
      params.require(:award_ceremony).permit(:ceremony, :isMajor)
    end
end
