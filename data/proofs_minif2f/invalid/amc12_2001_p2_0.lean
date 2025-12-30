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

  rw h₂ at h₃,
  have h₄ : a * b + a + b = 10 * a + b,
  { rw h₂, },
  have h₅ : a * b + a + b = a * b + b + a,
  { ring, },
  have h₆ : 10 * a + b = a * b + b + a,
  { rw h₅, rw h₄, },
  have h₇ : 10 * a = a * b + a,
  { rw h₆, rw h₂, },
  have h₈ : 9 * a = a * b,
  { have h₉ : a * 9 = 9 * a, by ring,
    have h₁₀ : a * b = a * (9 + 1), by ring,
    have h₁₁ : a * 9 + a = a * b, by ring,
    have h₁₂ : 9 * a + a = a * 9 + a, by ring,
    have h₁₃ : 9 * a + a = a * b, by ring,
    have h₁₄ : 9 * a
end
