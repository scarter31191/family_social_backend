require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(username: 'Carter', email: 'Carter@example.com')
  end

  test 'valid user' do
    assert @user.valid?
  end

  test "invalid without email" do
    @user.email = nil
    refute @user.valid?
    assert_not_nil @user.errors[:email]
  end 

  test "invalid without username" do
    @user.username = nil
    refute @user.valid?, 'user is valid without a username'
    assert_not_nil @user.errors[:username], 'no validation error for name present'
  end 

end
