require 'rails_helper'

RSpec.describe "bags/new", :type => :view do
  before(:each) do
    assign(:bag, Bag.new(
      :size => "MyString",
      :locker => nil
    ))
  end

  it "renders new bag form" do
    render

    assert_select "form[action=?][method=?]", bags_path, "post" do

      assert_select "input#bag_size[name=?]", "bag[size]"

      assert_select "input#bag_locker_id[name=?]", "bag[locker_id]"
    end
  end
end
