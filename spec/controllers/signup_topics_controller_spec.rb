require_relative '../spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SignupTopicsController do

  # This should return the minimal set of attributes required to create a valid
  # SignupTopic. As you add validations to SignupTopic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "topic_name" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SignupTopicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all signup_topics as @signup_topics" do
      signup_topic = SignupTopic.create! valid_attributes
      get :index, {}, valid_session
      assigns(:signup_topics).should eq([signup_topic])
    end
  end

  describe "GET show" do
    it "assigns the requested signup_topic as @signup_topic" do
      signup_topic = SignupTopic.create! valid_attributes
      get :show, {:id => signup_topic.to_param}, valid_session
      assigns(:signup_topic).should eq(signup_topic)
    end
  end

  describe "GET new" do
    it "assigns a new signup_topic as @signup_topic" do
      get :new, {}, valid_session
      assigns(:signup_topic).should be_a_new(SignupTopic)
    end
  end

  describe "GET edit" do
    it "assigns the requested signup_topic as @signup_topic" do
      signup_topic = SignupTopic.create! valid_attributes
      get :edit, {:id => signup_topic.to_param}, valid_session
      assigns(:signup_topic).should eq(signup_topic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SignupTopic" do
        expect {
          post :create, {:signup_topic => valid_attributes}, valid_session
        }.to change(SignupTopic, :count).by(1)
      end

      it "assigns a newly created signup_topic as @signup_topic" do
        post :create, {:signup_topic => valid_attributes}, valid_session
        assigns(:signup_topic).should be_a(SignupTopic)
        assigns(:signup_topic).should be_persisted
      end

      it "redirects to the created signup_topic" do
        post :create, {:signup_topic => valid_attributes}, valid_session
        response.should redirect_to(SignupTopic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved signup_topic as @signup_topic" do
        # Trigger the behavior that occurs when invalid params are submitted
        SignupTopic.any_instance.stub(:save).and_return(false)
        post :create, {:signup_topic => { "topic_name" => "invalid value" }}, valid_session
        assigns(:signup_topic).should be_a_new(SignupTopic)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SignupTopic.any_instance.stub(:save).and_return(false)
        post :create, {:signup_topic => { "topic_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested signup_topic" do
        signup_topic = SignupTopic.create! valid_attributes
        # Assuming there are no other signup_topics in the database, this
        # specifies that the SignupTopic created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SignupTopic.any_instance.should_receive(:update_attributes).with({ "topic_name" => "MyText" })
        put :update, {:id => signup_topic.to_param, :signup_topic => { "topic_name" => "MyText" }}, valid_session
      end

      it "assigns the requested signup_topic as @signup_topic" do
        signup_topic = SignupTopic.create! valid_attributes
        put :update, {:id => signup_topic.to_param, :signup_topic => valid_attributes}, valid_session
        assigns(:signup_topic).should eq(signup_topic)
      end

      it "redirects to the signup_topic" do
        signup_topic = SignupTopic.create! valid_attributes
        put :update, {:id => signup_topic.to_param, :signup_topic => valid_attributes}, valid_session
        response.should redirect_to(signup_topic)
      end
    end

    describe "with invalid params" do
      it "assigns the signup_topic as @signup_topic" do
        signup_topic = SignupTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SignupTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => signup_topic.to_param, :signup_topic => { "topic_name" => "invalid value" }}, valid_session
        assigns(:signup_topic).should eq(signup_topic)
      end

      it "re-renders the 'edit' template" do
        signup_topic = SignupTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SignupTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => signup_topic.to_param, :signup_topic => { "topic_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested signup_topic" do
      signup_topic = SignupTopic.create! valid_attributes
      expect {
        delete :destroy, {:id => signup_topic.to_param}, valid_session
      }.to change(SignupTopic, :count).by(-1)
    end

    it "redirects to the signup_topics list" do
      signup_topic = SignupTopic.create! valid_attributes
      delete :destroy, {:id => signup_topic.to_param}, valid_session
      response.should redirect_to(signup_topics_url)
    end
  end

end

