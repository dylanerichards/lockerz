class PagesController < ApplicationController
  def index
    @small_lockers = Locker.where(size: "small")
    @medium_lockers = Locker.where(size: "medium")
    @large_lockers = Locker.where(size: "large")
  end
end
