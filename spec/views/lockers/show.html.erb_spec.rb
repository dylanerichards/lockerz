require 'rails_helper'

RSpec.describe "lockers/show", :type => :view do
  before(:each) do
    @locker = assign(:locker, Locker.create!(
      :size => "Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Size/)
  end
end
