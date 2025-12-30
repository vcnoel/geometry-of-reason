import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p2
  (a b n : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9)
  (h₁ : 0 ≤ b ∧ b ≤ 9)
  (h₂ : n = 10 * a + b)
  (h₃ : n = a * b + a + b) :
  b = 9 :=
begin

  have h₄ : a * b = n - a - b,
  by {
    rw [h₂, h₃],
    congr,
  },
  have h₅ : a * b = 90,
  by {
    have h₆ : 10 * a + b = 10 * a + a + b,
    by {
      rw [h₃, h₂],
      congr,
    },
    have h₇ : 10 * a = a * b,
    by {
      have h₈ : 10 * a + a = a * (10 + 1),
      by {
        ring,
      },
      have h₉ : 10 * a + a = a * 11,
      by {
        rw h₈,
      },
      have h₁₀ : 10 * a + a + b = a * 11 + b,
      by {
        rw h₉,
      },
      have h₁₁ : 10 * a + a + b = a * b,
      by {
        rw h₇,
      },
      have h₁₂ : 10 * a + a + b = a * b,
      by {
        rw h₁₁,
     
end
