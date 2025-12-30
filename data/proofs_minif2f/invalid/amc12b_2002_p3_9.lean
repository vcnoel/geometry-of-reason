import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p3
  (S : finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n)) :
  S.card = 1 :=
begin

  have h₁ := h₀ 1,
  have h₂ := h₀ 2,
  have h₃ : 1 ∈ S ↔ 1 ∈ S := by exact h₀ 1,
  have h₄ : 2 ∈ S ↔ 2 ∈ S := by exact h₀ 2,
  have h₅ : ∀ (n : ℕ), n ∈ S → n ∈ {1, 2} := by { intro n, intro h, cases h with h h, exact h₁, exact h₂ },
  have h₆ : ∀ (n : ℕ), n ∈ {1, 2} → n ∈ S := by { intro n, intro h, cases h with h h, exact h₃, exact h₄ },
  have h₇ : {1, 2} = S := by { ext, exact h₆ },
  exact h₇.symm ▸ h₇ ▸ nat.finite.of_finite_finset S ▸ nat.finite.card_finset_of_eq_finset {1, 2} S,

end
