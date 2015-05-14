class Locker < ActiveRecord::Base
  has_many :bags

  def display_class
    bags.any? ? "taken" : size
  end

  def self.empty
    empty_lockers = Locker.select { |locker| !locker.bags.any? }
    empty_lockers = Locker.where(id: empty_lockers.map(&:id))
  end

  def self.of_size(bag)
    where(size: bag.size).first
  end

  def self.accept_bag(bag)
    empty.of_size(bag).bags << bag
  end
end
