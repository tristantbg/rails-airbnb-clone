class ContractsController < ApplicationController
  def index
    @employer_contracts = Contract.where(employer_id: current_user.id)
    @freelancer_contracts = Contract.where(freelancer_id: current_user.id)
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.employer_id = current_user.id
    if @contract.save
      redirect_to contracts_path
    else
      render :new
    end
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.update(contract_params)
    redirect_to contracts_path
  end

  private

  def contract_params
    params.require(:contract).permit(:employer_id, :freelancer_id, :status, :start_time, :end_time)
  end
end
