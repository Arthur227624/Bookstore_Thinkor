class LoansController < ApplicationController
  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.new(loan_params)

    if @loan.save
      redirect_to @loan, notice: 'Empréstimo registrado com sucesso!'
    else
      render :new
    end
  end

  def index
    @loan = Loan.all
  end

  def show
    @loan = Loan.find(params[:id])
  end

  def edit
    @loan = Loan.find(params[:id])
  end

  def update
    @loan = Loan.find(params[:id])
    if @loan.update(loan_params)
      redirect_to @loan, notice: 'Empréstimo atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    redirect_to loans_path, notice: "Empréstimo encerrado com sucesso!"
  end

  private

  def loan_params
    params.require(:loan).permit(:loan_date, :delivery_date, :book_name)
  end
end
