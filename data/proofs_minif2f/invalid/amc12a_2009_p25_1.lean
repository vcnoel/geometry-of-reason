import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p25
  (a : ℕ → ℝ)
  (h₀ : a 1 = 1)
  (h₁ : a 2 = 1 / real.sqrt 3)
  (h₂ : ∀ n, 1 ≤ n → a (n + 2) = (a n + a (n + 1)) / (1 - a n * a (n + 1))) :
  abs (a 2009) = 0 :=
begin

  induction 2009 with n IH generalizing a,
  { simp at h₀, },
  { have h₃ : abs (a (n + 2)) = abs ((a n + a (n + 1)) / (1 - a n * a (n + 1))),
    by { apply abs_of_real, },
    have h₄ : abs (a n * a (n + 1)) ≤ abs (a n) * abs (a (n + 1)),
    by { apply mul_le_mul, },
    have h₅ : abs (a n * a (n + 1)) < 1,
    by { apply lt_of_le_of_ne h₄ (ne_of_gt (real.sqrt 3 > 1)), },
    have h₆ : abs (1 - a n * a (n + 1)) ≥ 1,
    by { apply sub_nonneg_of_le h₅ (le_refl 1), },
    have h₇ : abs ((a n + a (n + 1)) / (1 - a n * a (n + 1))) ≤
      (abs (a n) + abs (a (n + 1)))
end
