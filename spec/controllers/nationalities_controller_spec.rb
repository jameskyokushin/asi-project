require 'spec_helper'

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

describe NationalitiesController do

  # This should return the minimal set of attributes required to create a valid
  # Nationality. As you add validations to Nationality, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NationalitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all nationalities as @nationalities" do
      nationality = Nationality.create! valid_attributes
      get :index, {}, valid_session
      assigns(:nationalities).should eq([nationality])
    end
  end

  describe "GET show" do
    it "assigns the requested nationality as @nationality" do
      nationality = Nationality.create! valid_attributes
      get :show, {:id => nationality.to_param}, valid_session
      assigns(:nationality).should eq(nationality)
    end
  end

  describe "GET new" do
    it "assigns a new nationality as @nationality" do
      get :new, {}, valid_session
      assigns(:nationality).should be_a_new(Nationality)
    end
  end

  describe "GET edit" do
    it "assigns the requested nationality as @nationality" do
      nationality = Nationality.create! valid_attributes
      get :edit, {:id => nationality.to_param}, valid_session
      assigns(:nationality).should eq(nationality)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Nationality" do
        expect {
          post :create, {:nationality => valid_attributes}, valid_session
        }.to change(Nationality, :count).by(1)
      end

      it "assigns a newly created nationality as @nationality" do
        post :create, {:nationality => valid_attributes}, valid_session
        assigns(:nationality).should be_a(Nationality)
        assigns(:nationality).should be_persisted
      end

      it "redirects to the created nationality" do
        post :create, {:nationality => valid_attributes}, valid_session
        response.should redirect_to(Nationality.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved nationality as @nationality" do
        # Trigger the behavior that occurs when invalid params are submitted
        Nationality.any_instance.stub(:save).and_return(false)
        post :create, {:nationality => {}}, valid_session
        assigns(:nationality).should be_a_new(Nationality)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Nationality.any_instance.stub(:save).and_return(false)
        post :create, {:nationality => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested nationality" do
        nationality = Nationality.create! valid_attributes
        # Assuming there are no other nationalities in the database, this
        # specifies that the Nationality created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Nationality.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => nationality.to_param, :nationality => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested nationality as @nationality" do
        nationality = Nationality.create! valid_attributes
        put :update, {:id => nationality.to_param, :nationality => valid_attributes}, valid_session
        assigns(:nationality).should eq(nationality)
      end

      it "redirects to the nationality" do
        nationality = Nationality.create! valid_attributes
        put :update, {:id => nationality.to_param, :nationality => valid_attributes}, valid_session
        response.should redirect_to(nationality)
      end
    end

    describe "with invalid params" do
      it "assigns the nationality as @nationality" do
        nationality = Nationality.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Nationality.any_instance.stub(:save).and_return(false)
        put :update, {:id => nationality.to_param, :nationality => {}}, valid_session
        assigns(:nationality).should eq(nationality)
      end

      it "re-renders the 'edit' template" do
        nationality = Nationality.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Nationality.any_instance.stub(:save).and_return(false)
        put :update, {:id => nationality.to_param, :nationality => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested nationality" do
      nationality = Nationality.create! valid_attributes
      expect {
        delete :destroy, {:id => nationality.to_param}, valid_session
      }.to change(Nationality, :count).by(-1)
    end

    it "redirects to the nationalities list" do
      nationality = Nationality.create! valid_attributes
      delete :destroy, {:id => nationality.to_param}, valid_session
      response.should redirect_to(nationalities_url)
    end
  end

end
