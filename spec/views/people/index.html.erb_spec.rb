require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        name: "Name",
        email: "Email",
        bio: "MyText"
      ),
      Person.create!(
        name: "Name",
        email: "Email",
        bio: "MyText"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
