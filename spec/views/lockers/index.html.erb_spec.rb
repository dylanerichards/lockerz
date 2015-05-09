require 'rails_helper'

RSpec.describe "lockers/index", :type => :view do
  before(:each) do
    assign(:lockers, [
      Locker.create!(
        :size => "Size"
      ),
      Locker.create!(
        :size => "Size"
      )
    ])
  end

  it "renders a list of lockers" do
    render
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end
