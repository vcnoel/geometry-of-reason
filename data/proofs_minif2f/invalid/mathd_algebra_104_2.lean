import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  have h₁ : (125 / 8) * 12 = x * 12,
  by rw h₀,
  have h₂ : (125 / 8) * 12 = 375 / 2,
  by ring,
  have h₃ : x * 12 = 375 / 2,
  by rw h₁ h₂,
  have h₄ : x = (375 / 2) / 12,
  by {rw h₃, ring},
  have h₅ : x = 375 / 24,
  by {rw h₄, ring},
  have h₆ : x = 25 / 16,
  by {rw h₅, ring},
  have h₇ : x = 25 / 16,
  by {rw h₆, ring},
  have h₈ : 25 / 16 = 375 / 2,
  by {rw h₇, ring},
  have h₉ : x = 375 / 2,
  by {rw h₈, ring},
  exact h₉

end
