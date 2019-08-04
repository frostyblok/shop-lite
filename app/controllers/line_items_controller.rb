class LineItemsController < ApplicationController

  def create
    instrument = Instrument.find(params[:instrument_id])
    @line_item = @cart.add_instrument(instrument)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart, notice: 'Item added to cart.' }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @cart = Cart.find(session[:cart_id])
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def line_item_params
      params.require(:line_item).permit(:instrument_id)
    end
end
