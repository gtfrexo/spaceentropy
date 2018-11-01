defmodule Spaceentropy do
  alias Faker
  alias Comeonin.Bcrypt

  @random_faker [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 0
  ]
  @moduledoc """
  Spaceentropy generates random passwords with the glorious power of faker data,
  comeonin, and bcrypt.
  """

  @doc """
  gen_faker

  ## Examples

      iex> Spaceentropy.gen_faker
      {:ok,
      "superstructure 20 with Squid, Venison, Capers, Pineapple, and Buffalo Mozzarella BRAVO Regional BrandingDirector"}

  """
  def gen_faker do
    wizard = @random_faker 
    |> Enum.shuffle 
    |> List.first
    feet = @random_faker 
    |> Enum.shuffle 
    |> List.last
    stink = @random_faker 
    |> Enum.shuffle 
    |> List.first
    sorry = @random_faker 
    |> Enum.shuffle 
    |> List.last
    r1 =
      case wizard do
        1 -> Faker.Beer.En.style()
        2 -> Faker.Food.spice()
        3 -> Faker.Name.title()
        4 -> Faker.Pizza.pizza()
        5 -> Faker.Superhero.power()
        6 -> Faker.Cat.name()
        7 -> Faker.Color.name()
        8 -> Faker.Company.buzzword_suffix()
        9 -> Faker.Lorem.word()
        0 -> Faker.Nato.letter_code_word()
      end
    r2 =
      case feet do
        1 -> Faker.Beer.En.style()
        2 -> Faker.Food.spice()
        3 -> Faker.Name.title()
        4 -> Faker.Pizza.pizza()
        5 -> Faker.Superhero.power()
        6 -> Faker.Cat.name()
        7 -> Faker.Color.name()
        8 -> Faker.Company.buzzword_suffix()
        9 -> Faker.Lorem.word()
        0 -> Faker.Nato.letter_code_word()
      end
    r3 =
      case stink do
        1 -> Faker.Beer.En.style()
        2 -> Faker.Food.spice()
        3 -> Faker.Name.title()
        4 -> Faker.Pizza.pizza()
        5 -> Faker.Superhero.power()
        6 -> Faker.Cat.name()
        7 -> Faker.Color.name()
        8 -> Faker.Company.buzzword_suffix()
        9 -> Faker.Lorem.word()
        0 -> Faker.Nato.letter_code_word()
      end
    r4 =
      case sorry do
        1 -> Faker.Beer.En.style()
        2 -> Faker.Food.spice()
        3 -> Faker.Name.title()
        4 -> Faker.Pizza.pizza()
        5 -> Faker.Superhero.power()
        6 -> Faker.Cat.name()
        7 -> Faker.Color.name()
        8 -> Faker.Company.buzzword_suffix()
        9 -> Faker.Lorem.word()
        0 -> Faker.Nato.letter_code_word()
      end
    {:ok, "#{r1} #{r2} #{r3} #{r4}"}
  end

  @doc """
  gen_crypt

  ## Examples

      iex> Spaceentropy.gen_crypt
      {:ok, "$2b$12$DX7RHvRQLnhRzAeFxkreHeRtvPYmizUnIooSBxIvp2Te0JFDcy3I."}

  """

  def gen_crypt do
    a = Faker.Color.name()
    b = Faker.Company.buzzword_suffix()
    c = Faker.Lorem.word()
    d = "#{a} #{b} #{c}"
    password = Bcrypt.hashpwsalt(d)
    {:ok, password}
  end
end
