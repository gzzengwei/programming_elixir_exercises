defmodule Chop do
  def guess(number, range_start..range_end) do
    current_guess = new_guess(range_start..range_end)
    guess(number, range_start..range_end, current_guess)
  end

  defp guess(number, _.._, number) do
    IO.puts "Is it #{number}"
    IO.puts number
  end

  defp guess(number, range_start..range_end, current_guess) do
    IO.puts "Is it #{current_guess}"
    range_start..range_end = new_range(number, range_start, range_end, current_guess)
    current_guess = new_guess(range_start..range_end)
    guess(number, range_start..range_end, current_guess)
  end

  defp new_guess(range_start..range_end) do
    div (range_end + range_start), 2
  end

  defp new_range(number, range_start, _, current_guess) when current_guess > number do
    range_start..current_guess
  end

  defp new_range(number, _, range_end, current_guess) when current_guess < number do
    current_guess..range_end
  end
end
