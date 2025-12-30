import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p2
  (x : ℝ)
  (h₀ : x * (1 / 2 + 2 / 3) = 1) :
  x = 6 / 7 :=
begin

  let G = {x | x = 6 / 7},
  show G = x,
  assume g, then show g ∈ G,
  assume g, then show g * (1 / 2 + 2 / 3) = 1,
  show g * (1 / 2 + 2 / 3) = 6 / 7

end
