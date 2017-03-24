class DesignerApplicationsController < ApplicationController
  before_action :set_designer_application, only: [:show, :edit, :update, :destroy]

  # GET /designer_applications
  # GET /designer_applications.json
  def index
    @designer_applications = DesignerApplication.all
  end

  # GET /designer_applications/1
  # GET /designer_applications/1.json
  def show
  end

  # GET /designer_applications/new
  def new
    @designer_application = DesignerApplication.new
  end

  # GET /designer_applications/1/edit
  def edit
  end

  # POST /designer_applications
  # POST /designer_applications.json
  def create
    @designer_application = DesignerApplication.new(designer_application_params)

    respond_to do |format|
      if @designer_application.save
        format.html { redirect_to @designer_application, notice: 'Designer application was successfully created.' }
        format.json { render :show, status: :created, location: @designer_application }
      else
        format.html { render :new }
        format.json { render json: @designer_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designer_applications/1
  # PATCH/PUT /designer_applications/1.json
  def update
    respond_to do |format|
      if @designer_application.update(designer_application_params)
        format.html { redirect_to @designer_application, notice: 'Designer application was successfully updated.' }
        format.json { render :show, status: :ok, location: @designer_application }
      else
        format.html { render :edit }
        format.json { render json: @designer_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designer_applications/1
  # DELETE /designer_applications/1.json
  def destroy
    @designer_application.destroy
    respond_to do |format|
      format.html { redirect_to designer_applications_url, notice: 'Designer application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designer_application
      @designer_application = DesignerApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designer_application_params
      params.require(:designer_application).permit(:name, :birthday, :rut, :email, :address, :education_level, :degree, :years_of_experience, :about, :status)
    end
end
