import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_126
  (x y : ℝ)
  (h₀ : 2 * 3 = x - 9)
  (h₁ : 2 * (-5) = y + 1) :
  x = 15 ∧ y = -11 :=
begin

  rw h₀,
  rw h₁,
  split,
  { calc 6 = x - 9 : by {rw h₀, simp},
    { calc 6 = 15 - 9 : by {simp}, },
    { exact eq.refl 6 }, },
  { calc -10 = y + 1 : by {rw h₁, simp},
    { calc -10 = -11 + 1 : by {simp}, },
    { exact eq.refl (-10) }, },

end
