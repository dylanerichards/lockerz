require 'rails_helper'

RSpec.describe "bags/show", :type => :view do
  before(:each) do
    @bag = assign(:bag, Bag.create!(
      :size => "Size",
      :locker => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Size/)
    expect(rendered).to match(//)
  end
end
