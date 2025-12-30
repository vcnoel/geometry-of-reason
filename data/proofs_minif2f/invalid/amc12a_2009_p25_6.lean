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

  have h₃ : ∀ n : ℕ, a (n + 2) = a n + a (n + 1),
  { intro n,
    have h₄ : a n * a (n + 1) = 0,
    { by_contradiction h₅ : a n * a (n + 1) ≠ 0,
      have h₆ : a (n + 2) ≠ 0,
      { calc a (n + 2) = (a n + a (n + 1)) / (1 - a n * a (n + 1)) : by rw h₂
         ... ≠ 0 : by rw h₅; exact ne_of_gt (one_div_pos (1 - a n * a (n + 1))),
        exact h₆ },
      have h₇ : a (n + 2) ≠ 0,
      { by_contradiction h₈ : a (n + 2) = 0,
        have h₉ : a n ≠ 0,
        { by_contradiction h₁₀ : a n = 0,
          have h₁₁ : a (n + 1) ≠ 
end
