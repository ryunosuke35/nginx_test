require 'test_helper'

class NginxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nginx = nginxes(:one)
  end

  test "should get index" do
    get nginxes_url
    assert_response :success
  end

  test "should get new" do
    get new_nginx_url
    assert_response :success
  end

  test "should create nginx" do
    assert_difference('Nginx.count') do
      post nginxes_url, params: { nginx: { content: @nginx.content, title: @nginx.title } }
    end

    assert_redirected_to nginx_url(Nginx.last)
  end

  test "should show nginx" do
    get nginx_url(@nginx)
    assert_response :success
  end

  test "should get edit" do
    get edit_nginx_url(@nginx)
    assert_response :success
  end

  test "should update nginx" do
    patch nginx_url(@nginx), params: { nginx: { content: @nginx.content, title: @nginx.title } }
    assert_redirected_to nginx_url(@nginx)
  end

  test "should destroy nginx" do
    assert_difference('Nginx.count', -1) do
      delete nginx_url(@nginx)
    end

    assert_redirected_to nginxes_url
  end
end
