class LockersController < ApplicationController
  before_action :set_locker, only: [:show, :edit, :update, :destroy, :empty]

  def index
    @lockers = Locker.all
  end

  def show
  end

  def new
    @locker = Locker.new
  end

  def edit
  end

  def create
    @locker = Locker.new(locker_params)

    respond_to do |format|
      if @locker.save
        format.html { redirect_to @locker, notice: 'Locker was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @locker.update(locker_params)
        format.html { redirect_to @locker, notice: 'Locker was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @locker.destroy
    respond_to do |format|
      format.html { redirect_to lockers_url, notice: 'Locker was successfully destroyed.' }
    end
  end

  def empty
    @locker.bags.clear
    redirect_to root_path, { notice: "Bag removed!" }
  end

  private
  def set_locker
    @locker = Locker.find(params[:id])
  end

  def locker_params
    params.require(:locker).permit(:size)
  end
end
