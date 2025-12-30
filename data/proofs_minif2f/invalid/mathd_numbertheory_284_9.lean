import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_284
  (a b : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9)
  (h₁ : 10 * a + b = 2 * (a + b)) :
  10 * a + b = 18 :=
begin

  cases h₀ with h₀ h₀,
  cases h₀ with h₀ h₀,
  cases h₀ with h₀ h₁,
  rw h₁,
  rw mul_comm,
  have h₂ : a + b = a + b,
  { refl },
  rw h₂,
  repeat {rw mul_assoc},
  have h₃ : 20 = 20,
  { refl },
  rw h₃,
  have h₄ : 20 * a = 20 * a,
  { refl },
  rw h₄,
  have h₅ : 20 * b = 20 * b,
  { refl },
  rw h₅,
  have h₆ : 20 * a + 20 * b = 20 * (a + b),
  { rw add_mul,
    rw add_mul,
    refl },
  rw h₆,
  have h₇ : 20 * a + 20 * b = 20 * (a + b),
  { refl },
  rw h₇,
  have h₈ : 20 * a + 20 * b = 20 * (a + b),
  { refl },
  rw h₈,
  have h
end
