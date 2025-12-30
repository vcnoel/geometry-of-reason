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

  cases n with n, { exact false },
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a b,
  cases h₃ with a b,
  cases h₂ with a
end
