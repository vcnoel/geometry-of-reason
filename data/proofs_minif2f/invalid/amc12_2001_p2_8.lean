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

  have h₄ : a * b + a + b = 10 * a + b,
  by { apply congr_arg, congr, congr, rw h₂ },
  rw h₄ at h₃,
  rw h₂ at h₃,
  have h₅ : a * b + a + b = a * b + a + b,
  by { rw h₃ },
  have h₆ : 10 * a + b = a * b + a + b,
  by { rw h₄ },
  have h₇ : a * b + a + b = 10 * a + b,
  by { rw h₆ },
  have h₈ : a * b + a + b = a * b + a + b,
  by { rw h₅ },
  have h₉ : a * b + a + b = a * b + a + b,
  by { rw h₇ },
  have h₁₀ : a * b + a + b = a * b + a + b,
  by { rw h₈ },
  have h₁₁ : a * b + a + b = a * b + a + b,
  by { rw
end
