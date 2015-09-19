class TComplaintsController < ApplicationController
  before_action :set_t_complaint, only: [:show, :edit, :update, :destroy]

  # GET /t_complaints
  # GET /t_complaints.json
  def index
    @t_complaints = TComplaint.all
  end

  # GET /t_complaints/1
  # GET /t_complaints/1.json
  def show
  end

  # GET /t_complaints/new
  def new
    @t_complaint = TComplaint.new
  end

  # GET /t_complaints/1/edit
  def edit
  end

  # POST /t_complaints
  # POST /t_complaints.json
  def create
    @t_complaint = TComplaint.new(t_complaint_params)

    respond_to do |format|
      if @t_complaint.save
        format.html { redirect_to @t_complaint, notice: 'T complaint was successfully created.' }
        format.json { render :show, status: :created, location: @t_complaint }
      else
        format.html { render :new }
        format.json { render json: @t_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /t_complaints/1
  # PATCH/PUT /t_complaints/1.json
  def update
    respond_to do |format|
      if @t_complaint.update(t_complaint_params)
        format.html { redirect_to @t_complaint, notice: 'T complaint was successfully updated.' }
        format.json { render :show, status: :ok, location: @t_complaint }
      else
        format.html { render :edit }
        format.json { render json: @t_complaint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /t_complaints/1
  # DELETE /t_complaints/1.json
  def destroy
    @t_complaint.destroy
    respond_to do |format|
      format.html { redirect_to t_complaints_url, notice: 'T complaint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_t_complaint
      @t_complaint = TComplaint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def t_complaint_params
      params.require(:t_complaint).permit(:cmpnumber, :cmpfirst, :cmpmiddle, :cmplast, :cmpdetails)
    end
end
