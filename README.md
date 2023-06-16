# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


<h4 class="text-left mt-4">Joined Alpha Blog On: <%= @user.created_at.to_formatted_s(:long) %></h4>
    <h4 class="text-left mt-4">Updated Profile On: <%= @user.updated_at.to_formatted_s(:long) %></h4>


class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end
end
