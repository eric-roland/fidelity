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

describe ProductAttributesController do

  # This should return the minimal set of attributes required to create a valid
  # ProductAttribute. As you add validations to ProductAttribute, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProductAttributesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all product_attributes as @product_attributes" do
      product_attribute = ProductAttribute.create! valid_attributes
      get :index, {}, valid_session
      assigns(:product_attributes).should eq([product_attribute])
    end
  end

  describe "GET show" do
    it "assigns the requested product_attribute as @product_attribute" do
      product_attribute = ProductAttribute.create! valid_attributes
      get :show, {:id => product_attribute.to_param}, valid_session
      assigns(:product_attribute).should eq(product_attribute)
    end
  end

  describe "GET new" do
    it "assigns a new product_attribute as @product_attribute" do
      get :new, {}, valid_session
      assigns(:product_attribute).should be_a_new(ProductAttribute)
    end
  end

  describe "GET edit" do
    it "assigns the requested product_attribute as @product_attribute" do
      product_attribute = ProductAttribute.create! valid_attributes
      get :edit, {:id => product_attribute.to_param}, valid_session
      assigns(:product_attribute).should eq(product_attribute)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProductAttribute" do
        expect {
          post :create, {:product_attribute => valid_attributes}, valid_session
        }.to change(ProductAttribute, :count).by(1)
      end

      it "assigns a newly created product_attribute as @product_attribute" do
        post :create, {:product_attribute => valid_attributes}, valid_session
        assigns(:product_attribute).should be_a(ProductAttribute)
        assigns(:product_attribute).should be_persisted
      end

      it "redirects to the created product_attribute" do
        post :create, {:product_attribute => valid_attributes}, valid_session
        response.should redirect_to(ProductAttribute.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved product_attribute as @product_attribute" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProductAttribute.any_instance.stub(:save).and_return(false)
        post :create, {:product_attribute => {}}, valid_session
        assigns(:product_attribute).should be_a_new(ProductAttribute)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProductAttribute.any_instance.stub(:save).and_return(false)
        post :create, {:product_attribute => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested product_attribute" do
        product_attribute = ProductAttribute.create! valid_attributes
        # Assuming there are no other product_attributes in the database, this
        # specifies that the ProductAttribute created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProductAttribute.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => product_attribute.to_param, :product_attribute => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested product_attribute as @product_attribute" do
        product_attribute = ProductAttribute.create! valid_attributes
        put :update, {:id => product_attribute.to_param, :product_attribute => valid_attributes}, valid_session
        assigns(:product_attribute).should eq(product_attribute)
      end

      it "redirects to the product_attribute" do
        product_attribute = ProductAttribute.create! valid_attributes
        put :update, {:id => product_attribute.to_param, :product_attribute => valid_attributes}, valid_session
        response.should redirect_to(product_attribute)
      end
    end

    describe "with invalid params" do
      it "assigns the product_attribute as @product_attribute" do
        product_attribute = ProductAttribute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProductAttribute.any_instance.stub(:save).and_return(false)
        put :update, {:id => product_attribute.to_param, :product_attribute => {}}, valid_session
        assigns(:product_attribute).should eq(product_attribute)
      end

      it "re-renders the 'edit' template" do
        product_attribute = ProductAttribute.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProductAttribute.any_instance.stub(:save).and_return(false)
        put :update, {:id => product_attribute.to_param, :product_attribute => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested product_attribute" do
      product_attribute = ProductAttribute.create! valid_attributes
      expect {
        delete :destroy, {:id => product_attribute.to_param}, valid_session
      }.to change(ProductAttribute, :count).by(-1)
    end

    it "redirects to the product_attributes list" do
      product_attribute = ProductAttribute.create! valid_attributes
      delete :destroy, {:id => product_attribute.to_param}, valid_session
      response.should redirect_to(product_attributes_url)
    end
  end

end
