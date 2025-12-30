import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  -- Calculate the value of x + 1
  let x_plus_1 : ℤ := x + 1,

  -- Calculate the value of y + 5
  let y_plus_5 : ℤ := y + 5,

  -- Calculate the value of (x + 1)^2
  let x_plus_1_squared : ℤ := (x_plus_1)^2,

  -- Calculate the value of (y + 5)^3
  let y_plus_5_cubed : ℤ := (y_plus_5)^3,

  -- Calculate the value of (x + 1)^2 * (y + 5)^3
  let x_plus_1_squared_y_plus_5_cubed : ℤ := x_plus_1_squared * y_plus_5_cubed,

  -- Calculate the value of (x + 1)^2 * (y + 5)^3 % 19
  let x_plus_1_squared_y_plus_5_cubed_mod_19 : ℤ := x_plus_1_squared_y_plus_5_cubed % 19,

  -- Apply Fermat's Little Theorem
  have h₂ : (x_plus_1
end
