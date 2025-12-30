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

  have h₃ : ∀ n, 1 ≤ n → a (n + 1) * a n = (1 - a n * a (n + 1)) / 2,
  { intros n hn,
    have h₄ : a (n + 1) * a n * (1 - a n * a (n + 1)) = (a (n + 1) - a n) * (a (n + 1) + a n),
    { ring },
    have h₅ : a (n + 1) + a n ≠ 0,
    { intros h₆,
      have h₇ : a (n + 1) = a n,
      { rw h₆ at h₂,
        simp only [h₂, h₇] at h₂ },
      contradiction },
    have h₈ : (a (n + 1) * a n * (1 - a n * a (n + 1))) / (a (n + 1) + a n) = (a (n + 1) - a n) / 2,
    { have h₉ : a (n + 1) + a
end
