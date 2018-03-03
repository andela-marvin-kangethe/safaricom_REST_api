class MPesaServiceController < ApplicationController
  before_action :set_user 
  before_aciton :set_m_pesa_service, only: [:show, :update, :destroy]

  "GET /user/:user_id/m_pesa_service"
  def index
    @services = @user.m_pesa_service
    json_response(@service)
  end

  "POST  /user/:user_id/m_pesa_service"
  def create
    @service = @user.m_pesa_service.create!(m_pesa_service_params)
    json_response(@service)
  end

  "GET /user/:user_id/m_pesa_service/:id"
  def show
    json_response(@service)
  end

  "PUT /user/:user_id/m_pesa_service/:id"
  def update
    @service.update!(m_pesa_service_params)
    head :no_content
  end

  "DESTROY /user/:id"
  def destroy
    @service.destroy!
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_m_pesa_service
    @service = @user.m_pesa_service.find(params[:id])
  end

  def m_pesa_service_params
    params.permit!(:status, :county)
  end
end
