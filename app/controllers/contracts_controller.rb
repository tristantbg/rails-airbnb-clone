class ContractsController < ApplicationController

  def index
    if user_signed_in?
      @employer_contracts = Contract.where(user_id: current_user.id).order('updated_at DESC')
      @freelancer_contracts = Contract.where(skill_id: current_user.skills.first.id).order('updated_at DESC')
    else
      redirect_to root_path
    end
  end

  def new
    @contract = Contract.new
    @skill = Skill.find(params[:skill_id])
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.start_time = Date.strptime(contract_params[:start_time], "%m/%d/%Y")
    @contract.end_time = Date.strptime(contract_params[:end_time], "%m/%d/%Y")
    @contract.user = current_user
    @skill = Skill.find(params[:skill_id])
    @contract.skill = @skill
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
    redirect_to user_contracts_path(current_user)
  end

  private

  def contract_params
    params.require(:contract).permit(:description, :start_time, :end_time)
  end

end
