class MPesaServiceController < ApplicationController
  before_action :set_user 
  before_action :set_m_pesa_service, only: [:show, :update, :destroy]

  "GET /user/:user_id/m_pesa_service"
  def index
    @services = @user.m_pesa_services
    json_response(@services)
  end

  "POST  /user/:user_id/m_pesa_service"
  def create
    @service = @user.m_pesa_services.create!(m_pesa_service_params)
    json_response(@service)
  end

  "GET /user/:user_id/m_pesa_service/:id"
  def show
    json_response(@service)
  end

  "PUT /user/:user_id/m_pesa_service/:id"
  def update
    @service.update!(m_pesa_service_params)
    json_response(@service)
  end

  "DESTROY /user/:id"
  def destroy
    @service.destroy!
    json_response(@user.m_pesa_services)
  end

  private

  def m_pesa_service_params
    params.permit(:status, :county)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_m_pesa_service
    @service = @user.m_pesa_services.find_by!(params[:id]) if @user
  end
end
