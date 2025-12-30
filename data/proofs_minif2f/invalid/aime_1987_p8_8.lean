import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1987_p8
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∃! k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13) :
  n ≤ 112 :=
begin

  -- We will first prove that if n < 8, then n = 7. This is because
  -- 7/13 < n/(n+1) < 8/15.
  -- Then, we will prove that if n > 8, then n > 112. This is because
  -- n/(n+k) < 7/13, where k is the unique number that satisfies the
  -- above inequality.

  -- First, we will prove that if n < 8, then n = 7.
  have h₂ : ∀ n : ℕ, n < 8 → n = 7,
  
end
