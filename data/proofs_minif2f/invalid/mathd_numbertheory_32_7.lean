import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  have h₁ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36 := h₀,
  have h₂ : ∀ (n : ℕ), n ∈ S → n ∣ 36 := h₁.mp,
  have h₃ : ∀ (n : ℕ), n ∈ S → n ≤ 36 := 
end
