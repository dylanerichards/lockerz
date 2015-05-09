class Bag < ActiveRecord::Base
  belongs_to :locker

  def place_in_locker
    first_available_locker = Locker.where(size: self.size).first
    first_available_locker.bags << self
  end
end
