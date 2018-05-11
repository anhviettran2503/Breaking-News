require 'rails_helper'

RSpec.describe "types/index", type: :view do
  before(:each) do
    assign(:types, [
      Type.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Type.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
