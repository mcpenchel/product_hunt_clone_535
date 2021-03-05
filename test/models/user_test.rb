require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "that the full_name method returns a pretty string" do
    # Setup
    brann = User.new(first_name: "bRAnn", last_name: "dailoR", email: "drumm@mastodon.org")

    # Verify
    assert_equal "Brann Dailor", brann.full_name
  end
end
