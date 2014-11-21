require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "add_many_cats" do 
	user = FactoryGirl.create(:user)
	puts user
    # expected = 'KM#' + quote.id.to_s
    # actual = quote.unique_tag
    # assert_equal expected, actual
  end
end
