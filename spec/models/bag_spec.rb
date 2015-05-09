require 'rails_helper'

describe Bag do
  describe "#place_in_locker" do
    it "places the bag in the first available locker of appropriate size" do
      bag = Bag.new(size: "small")

      Locker.create(size: "small")
      Locker.create(size: "small")

      small_locker = Locker.where(size: "small").first

      bag.place_in_locker


      expect(small_locker.bags).to include(bag)
    end
  end
end
