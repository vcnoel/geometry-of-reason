import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  -- Subtract h₁ from 3 * h₀ to get 2 * x = 12
  have h₂ := (3 * h₀).sub (h₁),
  -- So x = 6
  have h₃ := (h₂ / 2).to_real,
  -- Now substitute into h₀ to get y = 1
  have h₄ := (h₀.sub (3 * h₃)).to_real,
  -- So x^2 - y^2 = 36 - 1 = 35, but we need 217
  have h₅ : x^2 - y^2 ≠ 217,
  from not_ne_of_eq_of_ne h₃ h₄,

  -- Now we need to find a contradiction.
  have h₆ : x = 6 ∧ y = 1,
  from ⟨h₃, h₄⟩,
  -- So x^2 - y^2 = 36 - 1 = 35, but we need 217
  have h₇ : x^2 - y^2 = 35,
  from h₆.1.pow 2 - h₆.2.pow 2,

  -- This is a contradiction
end
