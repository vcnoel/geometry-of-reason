import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_221
  (S : finset ℕ)
  (h₀ : ∀ (x : ℕ), x ∈ S ↔ 0 < x ∧ x < 1000 ∧ x.divisors.card = 3) :
  S.card = 11 :=
begin

  have h₁ : ∀ (x : ℕ), x ∈ S → 0 < x ∧ x < 1000 ∧ x.divisors.card = 3 :=
    λ x hx, h₀ x hx,
  have h₂ : S = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31} :=
    set.ext (λ x hx, 
      match x with
      | 2 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 3 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 5 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 7 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 11 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 13 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 17 := by { have h₃ := h₁ x hx, exact h₃.1 },
      | 
end
