require 'rails_helper'

RSpec.describe "masterkeys/edit", type: :view do
  before(:each) do
    @masterkey = assign(:masterkey, Masterkey.create!(
      key: "MyString"
    ))
  end

  it "renders the edit masterkey form" do
    render

    assert_select "form[action=?][method=?]", masterkey_path(@masterkey), "post" do

      assert_select "input[name=?]", "masterkey[key]"
    end
  end
end
