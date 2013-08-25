require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { address: @employee.address, birthdate: @employee.birthdate, city: @employee.city, country: @employee.country, email: @employee.email, fax: @employee.fax, first_name: @employee.first_name, hiredate: @employee.hiredate, last_name: @employee.last_name, phone: @employee.phone, postal_code: @employee.postal_code, reports_to: @employee.reports_to, state: @employee.state, title: @employee.title }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { address: @employee.address, birthdate: @employee.birthdate, city: @employee.city, country: @employee.country, email: @employee.email, fax: @employee.fax, first_name: @employee.first_name, hiredate: @employee.hiredate, last_name: @employee.last_name, phone: @employee.phone, postal_code: @employee.postal_code, reports_to: @employee.reports_to, state: @employee.state, title: @employee.title }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
