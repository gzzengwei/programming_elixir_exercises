prefix = fn a ->
  fn b -> a <> " " <> b
  end
end

mr = prefix.("Mr")

IO.puts mr.("Wei")
