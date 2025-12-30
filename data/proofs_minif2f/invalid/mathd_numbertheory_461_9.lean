import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_461
  (n : ℕ)
  (h₀ : n = finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7))) :
  (3^n) % 8 = 1 :=
begin

  -- n = finset.card { x | gcd x 8 = 1 } = finset.card { 1, 3, 5, 7 }.
  let s := finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7),
  have h₁ : s = finset {1, 3, 5, 7} := by
    { ext,
      apply and_imp,
      { intro x,
        simp [finset.mem_filter] },
      { intro x,
        simp [finset.mem_filter] } },
  have h₂ : finset.card s = 4 := by
    { rw [finset.card_eq_of_eq {1, 3, 5, 7}] },
  have h₃ : finset.card s = n := by
    { rw [h₀] },
  have h₄ : 4 = n := by
    { rw [h₂, h₃] },
  have h₅ : 4 = 2^2 := by
    { rw [pow_two 2] },
  have h₆ : n = 2^2 := by
    { rw [
end
