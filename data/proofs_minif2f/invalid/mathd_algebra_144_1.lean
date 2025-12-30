import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_144
  (a b c d : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₀ : (c : ℤ) - b = d)
  (h₁ : (b : ℤ) - a = d)
  (h₂ : a + b + c = 60)
  (h₃ : a + b > c) :
  d < 10 :=
begin

  -- By h₃, we know that a + b > c.
  -- We can use this to derive a contradiction.
  -- Assume that d ≥ 10.
  have h₄ : d ≥ 10, from le_of_not_lt h₀,
  -- By h₀, we know that 0 < a, 0 < b, 0 < c, and 0 < d.
  -- We can use these inequalities to derive a contradiction.
  have h₅ : (a + b + c : ℤ) ≥ 10, from add_le_add h₀ h₀,
  -- By h₂, we know that a + b + c = 60.
  -- We can use this to derive a contradiction.
  have h₆ : 60 ≥ 10, from le_of_eq h₂ h₅,
  -- h₆ is a contradiction, so we must have d < 10.
  exact not_le_of_lt h₄ h₆,

end
