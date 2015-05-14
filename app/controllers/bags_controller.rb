class BagsController < ApplicationController
  before_action :set_bag, only: [:show, :edit, :update, :destroy]

  def index
    @bags = Bag.all
  end

  def show
  end

  def new
    @bag = Bag.new
  end

  def edit
  end

  def create
    @bag = Bag.new(bag_params)

    respond_to do |format|
      if @bag.save
        Locker.accept_bag(@bag)
        format.html { redirect_to @bag, notice: 'Bag added.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @bag.update(bag_params)
        format.html { redirect_to @bag, notice: 'Bag was successfully updated.' }
        format.json { render :show, status: :ok, location: @bag }
      else
        format.html { render :edit }
        format.json { render json: @bag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bag.destroy
    respond_to do |format|
      format.html { redirect_to bags_url, notice: 'Bag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_bag
    @bag = Bag.find(params[:id])
  end

  def bag_params
    params.require(:bag).permit(:size, :locker_id)
  end
end
