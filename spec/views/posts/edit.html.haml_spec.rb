require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :title => "MyString",
      :image_url => "MyString",
      :description => "MyText",
      :content => "MyText",
      :author => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[title]"

      assert_select "input[name=?]", "post[image_url]"

      assert_select "textarea[name=?]", "post[description]"

      assert_select "textarea[name=?]", "post[content]"

      assert_select "input[name=?]", "post[author]"
    end
  end
end
