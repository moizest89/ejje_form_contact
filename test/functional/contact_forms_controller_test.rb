require 'test_helper'

class ContactFormsControllerTest < ActionController::TestCase
  setup do
    @contact_form = contact_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_form" do
    assert_difference('ContactForm.count') do
      post :create, contact_form: { appointment: @contact_form.appointment, company: @contact_form.company, email_1: @contact_form.email_1, email_2: @contact_form.email_2, email_3: @contact_form.email_3, name: @contact_form.name, personal_email: @contact_form.personal_email }
    end

    assert_redirected_to contact_form_path(assigns(:contact_form))
  end

  test "should show contact_form" do
    get :show, id: @contact_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_form
    assert_response :success
  end

  test "should update contact_form" do
    put :update, id: @contact_form, contact_form: { appointment: @contact_form.appointment, company: @contact_form.company, email_1: @contact_form.email_1, email_2: @contact_form.email_2, email_3: @contact_form.email_3, name: @contact_form.name, personal_email: @contact_form.personal_email }
    assert_redirected_to contact_form_path(assigns(:contact_form))
  end

  test "should destroy contact_form" do
    assert_difference('ContactForm.count', -1) do
      delete :destroy, id: @contact_form
    end

    assert_redirected_to contact_forms_path
  end
end
