require 'rails_helper'

RSpec.describe "masterkeys/new", type: :view do
  before(:each) do
    assign(:masterkey, Masterkey.new(
      key: "MyString"
    ))
  end

  it "renders new masterkey form" do
    render

    assert_select "form[action=?][method=?]", masterkeys_path, "post" do

      assert_select "input[name=?]", "masterkey[key]"
    end
  end
end
