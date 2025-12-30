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

  have h₃ : ∀ n, 1 ≤ n → a (n + 1) = a n * (1 - a n) / (1 - a n * a (n + 1)),
  { intro n h,
    have h₄ : 1 - a n * a (n + 1) ≠ 0,
    { intro h₅,
      have h₆ : a n * a (n + 1) = 1,
      { rw h₅ },
      have h₇ : a n = 1,
      { apply h₆ },
      have h₈ : a (n + 1) = 1,
      { apply h₆ },
      have h₉ : a n = a (n + 1),
      { apply h₇ },
      have h₁₀ : a (n + 1) = a n,
      { apply h₈ },
      have h₁₁ : ∀ k, a (n + k) = a (n + k + 1),
      { intros k hk,
        have h₁₂ : a (n + k) = a (n + k + 1),
        { apply h₉
end
