import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_327
  (a : ℝ)
  (h₀ : 1 / 5 * abs (9 + 2 * a) < 1) :
  -7 < a ∧ a < -2 :=
begin

  have h₁ : 9 + 2 * a ≠ 0,
  { intro h,
    have h₂ : 1 / 5 * abs (9 + 2 * a) = 0,
    { rw [h],
      simp },
    exact (h₀ h₂).elim },
  have h₂ : 1 / abs (9 + 2 * a) < 1 / 5,
  { have h₃ : 1 / abs (9 + 2 * a) = abs (1 / (9 + 2 * a)),
    { rw [inv_abs_eq_abs_inv] },
    have h₄ : abs (1 / (9 + 2 * a)) < 1 / 5,
    { apply abs_lt,
      exact h₀ },
    exact h₃.symm.trans h₄ },
  have h₃ : abs (9 + 2 * a) < 5,
  { have h₄ : abs (9 + 2 * a) = 1 / (1 / abs (9 + 2 * a)),
    { rw [inv_abs_eq_abs_inv] },
    have h₅ : 1 / abs (9 + 2 * a)
end
