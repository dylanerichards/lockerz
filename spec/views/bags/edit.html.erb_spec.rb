require 'rails_helper'

RSpec.describe "bags/edit", :type => :view do
  before(:each) do
    @bag = assign(:bag, Bag.create!(
      :size => "MyString",
      :locker => nil
    ))
  end

  it "renders the edit bag form" do
    render

    assert_select "form[action=?][method=?]", bag_path(@bag), "post" do

      assert_select "input#bag_size[name=?]", "bag[size]"

      assert_select "input#bag_locker_id[name=?]", "bag[locker_id]"
    end
  end
end
