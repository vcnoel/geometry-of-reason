import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_35
  (p q : ℝ → ℝ)
  (h₀ : ∀ x, p x = 2 - x^2)
  (h₁ : ∀ x ≠ 0, q x = 6 / x) :
  p (q 2) = -7 :=
begin

  -- Apply h₁ to q 2
  have h₂ : q 2 = 6 / 2,
  from h₁ (ne_of_gt (zero_lt_two : 0 < 2)),

  -- Simplify h₂
  have h₂' : q 2 = 3,
  from h₂,

  -- Substitute h₂' into p (q 2)
  have h₃ : p (q 2) = p 3,
  from rfl,

  -- Apply h₀ to p 3
  have h₄ : p 3 = 2 - 3^2,
  from h₀ 3,

  -- Simplify h₄
  have h₄' : p 3 = -7,
  from h₄,

  -- Substitute h₄' into h₃
  have h₅ : p (q 2) = -7,
  from h₃,

  -- Conclude the proof
  exact h₅

end
