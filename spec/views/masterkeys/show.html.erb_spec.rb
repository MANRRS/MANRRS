# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'masterkeys/show', type: :view do
  before(:each) do
    @masterkey = assign(:masterkey, Masterkey.create!(
                                      key: 'Key'
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Key/)
  end
end
