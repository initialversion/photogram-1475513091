class BankAccountsController < ApplicationController
  def index
    @bank_accounts = BankAccount.all
  end

  def show
    @bank_account = BankAccount.find(params[:id])
  end

  def new
    @bank_account = BankAccount.new
  end

  def create
    @bank_account = BankAccount.new
    @bank_account.bank_name = params[:bank_name]

    if @bank_account.save
      redirect_to "/bank_accounts", :notice => "Bank account created successfully."
    else
      render 'new'
    end
  end

  def edit
    @bank_account = BankAccount.find(params[:id])
  end

  def update
    @bank_account = BankAccount.find(params[:id])

    @bank_account.bank_name = params[:bank_name]

    if @bank_account.save
      redirect_to "/bank_accounts", :notice => "Bank account updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bank_account = BankAccount.find(params[:id])

    @bank_account.destroy

    redirect_to "/bank_accounts", :notice => "Bank account deleted."
  end
end
