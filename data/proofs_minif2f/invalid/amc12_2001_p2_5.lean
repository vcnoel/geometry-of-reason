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

  have h₄ := h₂.symm,
  have h₅ := h₃.symm,
  have h₆ : a * b + a + b = 10 * a + b,
  { rw [h₅, h₄], },
  have h₇ : a * b + a + b = a * b + b + a,
  { rw [add_comm, add_comm], },
  have h₈ : a * b + a + b = a * b + b + a,
  { rw [h₇], },
  have h₉ : a * b + a + b = a * b + b + a,
  { rw [h₈], },
  have h₁₀ : a * b + a + b = a * b + a + b,
  { rw [h₉], },
  have h₁₁ : a * b + a + b = a * b + a + b,
  { rw [h₁₀], },
  have h₁₂ : a * b + a + b = a * b + a + b,
  { rw [h₁₁], },
  have h₁₃ : a * b + a +
end
