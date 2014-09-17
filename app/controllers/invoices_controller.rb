class InvoicesController < ApplicationController

  before_action :find_invoice, :only => [:create, :destroy, :edit]

  def index
    @invocies = Invoces.all
  end

  def new
    @invoice = Invoces.new
  end

  def create
    @invoice = Invoces.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html {redirect_to @company, notice: '成功新增收據種類'}
        format.json {render action: 'show', status: :created, location: @invoice}
      else
        format.html {render action: 'new'}
        format.json {render json: @invoice.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
  end

  def edit
  end

  private
  def invoice_params
    params.require(:invoice).permit(:name)
  end

  def find_invoice
    @invoice = Invoces.find(invoice_params)
  end
end
