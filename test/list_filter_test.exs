defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "Count odd numbers in a list" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["1", "2", "6", "43", "banana", "6", "abc"]
      list3 = ["1", "2", "6", "42", "banana", "6", "abc"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 2
      assert ListFilter.call(list3) == 1
    end

    test "passing an empty list" do
      list = []

      assert ListFilter.call(list) == 0
    end
  end
end
