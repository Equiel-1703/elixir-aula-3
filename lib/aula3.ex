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

  def semana_max_venda(0), do: 0

  def semana_max_venda(n) do
    if maior_venda(n) == vendas(n) do
      n
    else
      semana_max_venda(n - 1)
    end
  end

  def zero_vendas(n) when n < 0, do: -1

  def zero_vendas(n) do
    if vendas(n) == 0 do
      n
    else
      zero_vendas(n - 1)
    end
  end

  def acha_semana(_, n) when n < 0, do: -1

  def acha_semana(s, n) do
    if vendas(n) == s do
      n
    else
      acha_semana(s, n - 1)
    end
  end

  def produto_m_n(m, n) when m > n, do: :error

  def produto_m_n(m, n) when m == n, do: m

  def produto_m_n(m, n) do
    m * produto_m_n(m + 1, n)
  end
end
