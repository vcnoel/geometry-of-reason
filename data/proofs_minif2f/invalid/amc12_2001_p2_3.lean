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

  have h₄ : a = 1,
  { cases h₀ with h₅ h₆,
    { cases h₅ with h₇ h₈,
      { exact h₈ },
      { exact h₇ },
      { exact h₇ },
      { exact h₇ } },
    { cases h₆ with h₉ h₁₀,
      { exact h₉ },
      { exact h₉ } } },
  have h₅ : a * b = b,
  { have h₆ : a * b + a + b = a * b + b,
    by { rw h₄ },
    have h₇ : a * b + a + b = b,
    by { rw h₃ at h₆, exact h₆ },
    exact h₇ },
  have h₆ : b * 9 + b = b,
  by { rw h₅, exact (mul_add b 9 b) },
  have h₇ : 9 * b = 0,
  by { exact (sub_eq_zero.2 h₆) },
  have h₈ : 9 = 0,
  by { exact (eq
end
