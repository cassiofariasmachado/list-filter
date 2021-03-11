defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the count of odd numbers of the list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      odd_count = ListFilter.call(list)
      expected_count = 3

      assert expected_count == odd_count
    end

    test "returns zero if there is no odd numbers in the list" do
      list = ["2", "4", "6", "nanica", "banana", "abc"]

      odd_count = ListFilter.call(list)
      expected_count = 0

      assert expected_count == odd_count
    end
  end
end
