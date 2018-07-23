class VisitCompaniesController < ApplicationController
  before_action :set_visit_company, only: [:show, :edit, :update, :destroy]

  # GET /visit_companies
  # GET /visit_companies.json
  def index
    @visit_companies = VisitCompany.all
  end

  # GET /visit_companies/1
  # GET /visit_companies/1.json
  def show
  end

  # GET /visit_companies/new
  def new
    @visit_company = VisitCompany.new
  end

  # GET /visit_companies/1/edit
  def edit
  end

  # POST /visit_companies
  # POST /visit_companies.json
  def create
    @visit_company = VisitCompany.new(visit_company_params)

    respond_to do |format|
      if @visit_company.save
        format.html { redirect_to @visit_company, notice: 'Visit company was successfully created.' }
        format.json { render :show, status: :created, location: @visit_company }
      else
        format.html { render :new }
        format.json { render json: @visit_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_companies/1
  # PATCH/PUT /visit_companies/1.json
  def update
    respond_to do |format|
      if @visit_company.update(visit_company_params)
        format.html { redirect_to @visit_company, notice: 'Visit company was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_company }
      else
        format.html { render :edit }
        format.json { render json: @visit_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_companies/1
  # DELETE /visit_companies/1.json
  def destroy
    @visit_company.destroy
    respond_to do |format|
      format.html { redirect_to visit_companies_url, notice: 'Visit company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_company
      @visit_company = VisitCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_company_params
      params.require(:visit_company).permit(:company, :name)
    end
end
