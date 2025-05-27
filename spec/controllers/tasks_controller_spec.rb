require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_attributes) { { title: "New Task" } }

      it "creates a new Task" do
        expect {
          post :create, params: { task: valid_attributes }
        }.to change(Task, :count).by(1)
      end
    end

    context "with invalid params" do
      it "does not create a new Task" do
        expect {
          post :create, params: { task: { title: "" } }
        }.not_to change(Task, :count)
      end
    end
  end
end