import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_257
  (x : ℕ)
  (h₀ : 1 ≤ x ∧ x ≤ 100)
  (h₁ : 77∣(∑ k in (finset.range 101), k - x)) :
  x = 45 :=
begin

  rw finset.range_eq_range at h₁,
  apply finset.sum_congr_right (λ k hk, (h₁ k).trans (sub_eq_iff_eq_sub.mp (add_sub_cancel k x))),
  rw finset.range_eq_range,
  have h₂ := h₀.1,
  have h₃ := h₀.2,
  have h₄ : 1 ≤ 100 - x := by linarith,
  have h₅ : 1 ≤ x := by linarith,
  have h₆ : x ≤ 100 := by linarith,
  have h₇ : 1 ≤ 45 := by linarith,
  have h₈ : 45 ≤ 100 := by linarith,
  have h₉ := finset.sum_eq_single 45 (λ k hk, (finset.sum_eq_some (k ≠ 45)) (finset.sum_eq_some (k = 45))),
  have h₁₀ : 45 = 45 := by refl,
  have h₁₁ : 77∣(∑ k in finset.range 101, k - 45) := by linarith,
  have h₁₂ : 77∣(45 - 1 +
end
