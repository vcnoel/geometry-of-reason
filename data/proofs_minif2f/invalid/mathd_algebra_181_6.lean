import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  have h₂ : n + 5 = 2 * (n - 3),
  by {rw h₁, trivial},
  have h₃ : 2 * n - 6 = 2 * n - 6,
  by {rw h₂, trivial},
  have h₄ : 2 * n - 6 = 2 * n - 6,
  by {rw h₃, trivial},
  have h₅ : 11 ≠ 3,
  by {rw h₀, trivial},
  have h₆ : 11 + 5 = 2 * (11 - 3),
  by {rw h₄, trivial},
  have h₇ : n = 11,
  by {rw h₆, trivial},
  exact h₇

end
