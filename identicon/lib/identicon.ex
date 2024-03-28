defmodule Identicon do
  def main(input_string) do
    input_string
    |> hash_input()
    |> pick_color()
  end

def pick_color(image_struct) do
  #Image_struct looks something like this 
  #%Identicon.Image{
    #hex: [145, 46, 200, 3, 178, 206, 73, 228, 165, 65, 6, 141, 73, 90, 181, 112]
  #}

    %Identicon.Image{hex: hex_list} = image_struct
    [r, g, b | _] = hex_list

    [r, g, b]
end

def hash_input(input_string) do
  hex = 
  :crypto.hash(:md5, input_string)
  |> :binary.bin_to_list

  %Identicon.Image{hex: hex}
end

end
