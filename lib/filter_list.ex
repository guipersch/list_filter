defmodule FilterList do
  def call([]) do
    0
  end
  def call(list) do
    new_list = Enum.filter(list,fn item -> is_number(item) end)
    Enum.count(Enum.filter(new_list, fn item -> rem(item,2) !== 0 end))
  end
end
