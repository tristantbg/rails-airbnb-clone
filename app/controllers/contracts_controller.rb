class ContractsController < ApplicationController
  # before_action:

  def index
    if user_signed_in?
      @employer_contracts = Contract.where(user_id: current_user.id)
      @freelancer_contracts = Contract.where(user_id: current_user.id)
    else
    @employer_contracts = []
    @freelancer_contracts = []
    end
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.employer = current_user
    @contract.skill = Skill.find(params[:skill_id])
    if @contract.save
      redirect_to user_contracts_path(current_user)
    else
      render :new
    end
  end

  def update
    @contract = Contract.find(params[:id])
    if current_user.id == @contract.freelancer_id
      @contract.update(contract_params)
    end
    redirect_to contracts_path
  end

  private

  def contract_params
    params.require(:contract).permit(:description, :start_time, :end_time)
  end

  def set_defaut

  end

end
