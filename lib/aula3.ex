defmodule Aula3 do
  @moduledoc false

  def fat(n) when n <= 0 do
    1
  end

  def fat(n) do
    n * fat(n - 1)
  end

  def vendas(0), do: 33
  def vendas(1), do: 22
  def vendas(3), do: 0
  def vendas(4), do: 66
  def vendas(_n), do: 22

  def vendas_total(n) when n > 0 do
    vendas(n) + vendas_total(n - 1)
  end

  def vendas_total(_), do: vendas(0)

  def maxi(num1, num2), do: (if num1 > num2, do: num1, else: num2)

  def maior_venda(0), do: vendas(0)

  def maior_venda(n), do: maxi(vendas(n), maior_venda(n - 1))
end
