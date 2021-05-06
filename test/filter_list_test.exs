defmodule FilterListTest do
  use ExUnit.Case
  describe "call/1" do
    test "filtrar lista e contar numeros impares" do
      list1 = [1, 2, "banana", 4, "teste", 6]
      list2 = [1, 2]
      list3 = [1, 2, 3, 4]

      assert FilterList.call(list1) == 1
      assert FilterList.call(list2) == 1
      assert FilterList.call(list3) == 2
    end

    test "passing an empty list" do
      list = []

      assert FilterList.call(list) == 0
    end
  end
end
