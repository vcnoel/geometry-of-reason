import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_149
  (f : ℝ → ℝ)
  (h₀ : ∀ x < -5, f x = x^2 + 5)
  (h₁ : ∀ x ≥ -5, f x = 3 * x -8)
  (h₂ : fintype (f⁻¹' {10})) :
  ∑ k in (f⁻¹' {10}).to_finset, k = 6 :=
begin

  -- Step 1: Define the function f as a piecewise function.
  let f' : ℝ → ℝ := piecewise (λ x, if x < -5 then x^2 + 5 else 3 * x - 8),
  -- Step 2: Show that the two definitions of f are equal.
  have h₃ : ∀ x, f x = f' x,
  { intros x,
    split_ifs,
    { exact h₀ h,
      exact h₁ h },
    { exact h₁ h },
    { exact h₀ h },
  },
  -- Step 3: Show that f is continuous.
  have h₄ : continuous f',
  { apply piecewise_continuous,
    { apply continuous_id,
      intros x,
      exact abs_le.2 (pow_le_one (abs x) (abs_nonneg x)),
    },
    { apply continuous_mul,
      apply continuous_const_mul,
      apply continuous_id,
    },
    { apply continuous_mul,
      apply continuous_const_mul,
      apply continuous_id,
    },
  },
  -- Step 4: Show that f⁻¹' {10} is finite.
  have h₅ : fintype (f⁻¹' {
end
