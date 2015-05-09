require 'rails_helper'

RSpec.describe "lockers/new", :type => :view do
  before(:each) do
    assign(:locker, Locker.new(
      :size => "MyString"
    ))
  end

  it "renders new locker form" do
    render

    assert_select "form[action=?][method=?]", lockers_path, "post" do

      assert_select "input#locker_size[name=?]", "locker[size]"
    end
  end
end
