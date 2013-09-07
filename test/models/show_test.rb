require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "should not save without venue or date" do
    show = Show.new
    assert !show.save, "Saved show without venue or date"
  end

  test "should not save without date" do
    show = Show.new
    show.venue = "The Fillmore"
    assert !show.save, "Saved show with date"
  end

  test "should not save without venue" do
    show = Show.new
    show.date = "2013-12-12"
    assert !show.save, "Saved show without venue"
  end

  test "should save show" do
    show = Show.new
    show.date = "2013-12-12"
    show.venue = "The fillmore"
    assert show.save, "Did not save show with proper fields"
  end

  test "find" do
    assert_equal "The Fillmore", shows(:one).venue
  end

end
