import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_13
  (u v : ℕ)
  (S : set ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ (14 * n) % 100 = 46)
  (h₁ : is_least S u)
  (h₂ : is_least (S \ {u}) v) :
  ((u + v) : ℚ) / 2 = 64 :=
begin

  have h₃ : u ∈ S := h₁.is_least,
  have h₄ : v ∈ S \ {u} := h₂.is_least,
  have h₅ : v ∈ S := set.mem_diff h₄,
  have h₆ : u ≠ v := set.not_mem_diff h₃ h₄,
  have h₇ : u > v := nat.lt_of_not_eq h₆,
  have h₈ : u = 100 ∧ v = 25 ∨ u = 50 ∧ v = 100 ∨ u = 25 ∧ v = 50 ∨ u = 25 ∧ v = 25 ∨ u = 50 ∧ v = 50 ∨ u = 100 ∧ v = 100,
  {cases h₀ u h₃ with h₉ h₁₀,
    cases h₀ v h₅ with h₁₁ h₁₂,
    cases h₉ with h₁₃ h₁₄,
    cases h₁₁ with h₁₅ h₁₆,
    have h₁₇ : (14 * u) % 100 = 46,
      by {rw h₁₃},
    have h₁₈ : (14 * v) %
end
