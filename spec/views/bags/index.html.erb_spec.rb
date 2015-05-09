require 'rails_helper'

RSpec.describe "bags/index", :type => :view do
  before(:each) do
    assign(:bags, [
      Bag.create!(
        :size => "Size",
        :locker => nil
      ),
      Bag.create!(
        :size => "Size",
        :locker => nil
      )
    ])
  end

  it "renders a list of bags" do
    render
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
