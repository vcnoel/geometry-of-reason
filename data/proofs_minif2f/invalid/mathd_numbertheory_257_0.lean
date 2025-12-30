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

  rw finset.sum_range at h₁,
  rw finset.sum_range at h₁,
  have h₂ : 77 | ((101 * 101) / 2 - x * 101) := by { rw finset.sum_range at h₁, linarith },
  have h₃ : 77 ∣ (101 * 101 / 2 - x * 101) := by { rw finset.sum_range at h₁, linarith },
  have h₄ : 77 ∣ (101 * 101 / 2) := by { rw finset.sum_range at h₁, linarith },
  have h₅ : 77 ∣ (101 * 101 / 2 - 45 * 101) := by { rw finset.sum_range at h₁, linarith },
  have h₆ : 77 ∣ (101 * 101 / 2 - 45 * 101) := by { rw finset.sum_range at h₁, linarith },
  have h₇ : 77 ∣ (101 * 101 / 2 - 45 * 101) := by { rw finset.sum_range at h₁, linarith },
  have h₈ :
end
