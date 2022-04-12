# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/masterkeys', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Masterkey. As you add validations to Masterkey, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Masterkey.create! valid_attributes
      get masterkeys_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      masterkey = Masterkey.create! valid_attributes
      get masterkey_url(masterkey)
      expect(response).to be_successful
    end
  end

  # we do not create new keys
  # describe "GET /new" do
  #   it "renders a successful response" do
  #     get new_masterkey_url
  #     expect(response).to be_successful
  #   end
  # end

  describe 'GET /edit' do
    it 'renders a successful response' do
      masterkey = Masterkey.create! valid_attributes
      get edit_masterkey_url(masterkey)
      expect(response).to be_successful
    end
  end

  # describe "POST /create" do
  #   context "with valid parameters" do
  #     it "creates a new Masterkey" do
  #       expect {
  #         post masterkeys_url, params: { masterkey: valid_attributes }
  #       }.to change(Masterkey, :count).by(1)
  #     end

  #     it "redirects to the created masterkey" do
  #       post masterkeys_url, params: { masterkey: valid_attributes }
  #       expect(response).to redirect_to(masterkey_url(Masterkey.last))
  #     end
  #   end

  #   context "with invalid parameters" do
  #     it "does not create a new Masterkey" do
  #       expect {
  #         post masterkeys_url, params: { masterkey: invalid_attributes }
  #       }.to change(Masterkey, :count).by(0)
  #     end

  #     it "renders a successful response (i.e. to display the 'new' template)" do
  #       post masterkeys_url, params: { masterkey: invalid_attributes }
  #       expect(response).to be_successful
  #     end
  #   end
  # end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested masterkey' do
        masterkey = Masterkey.create! valid_attributes
        patch masterkey_url(masterkey), params: { masterkey: new_attributes }
        masterkey.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the masterkey' do
        masterkey = Masterkey.create! valid_attributes
        patch masterkey_url(masterkey), params: { masterkey: new_attributes }
        masterkey.reload
        expect(response).to redirect_to(masterkey_url(masterkey))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        masterkey = Masterkey.create! valid_attributes
        patch masterkey_url(masterkey), params: { masterkey: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  # there is one key and it must not be deleted
  # describe "DELETE /destroy" do
  #   it "destroys the requested masterkey" do
  #     masterkey = Masterkey.create! valid_attributes
  #     expect {
  #       delete masterkey_url(masterkey)
  #     }.to change(Masterkey, :count).by(-1)
  #   end

  #   it "redirects to the masterkeys list" do
  #     masterkey = Masterkey.create! valid_attributes
  #     delete masterkey_url(masterkey)
  #     expect(response).to redirect_to(masterkeys_url)
  #   end
  # end
end
