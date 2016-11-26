defmodule MyModule do
  def float_to_2_digits_str(num) do
    :erlang.float_to_list(num, [{:decimals, 2}])
  end

  def get_env(name) do
    System.get_env(name)
  end

  def file_extension(file_name) do
    Path.extname(file_name)
  end

  def current_directory do
    System.cwd
  end

  def system_command(command, args) do
    System.cmd(command, args)
  end
end
