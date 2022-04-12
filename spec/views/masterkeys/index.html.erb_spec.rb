# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'masterkeys/index', type: :view do
  before(:each) do
    assign(:masterkeys, [
             Masterkey.create!(
               key: 'Key'
             ),
             Masterkey.create!(
               key: 'Key'
             )
           ])
  end

  it 'renders a list of masterkeys' do
    render
    assert_select 'tr>td', text: 'Key'.to_s, count: 2
  end
end
