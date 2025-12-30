import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1967_p3
  (k m n : ℕ)
  (c : ℕ → ℕ)
  (h₀ : 0 < k ∧ 0 < m ∧ 0 < n)
  (h₁ : ∀ s, c s = s * (s + 1))
  (h₂ : nat.prime (k + m + 1))
  (h₃ : n + 1 < k + m + 1) :
  (∏ i in finset.Icc 1 n, c i) ∣ (∏ i in finset.Icc 1 n, (c (m + i) - c k)) :=
begin

  let a := λ i, c (m + i) - c k,
  have h₄ : ∀ i, c (m + i) = c (k + i) := by { intro i, apply h₁, },
  have h₅ : ∀ i, a i = c (k + i) - c k := by { intro i, rw h₄, },
  have h₆ : ∀ i, c (k + i) = (k + i) * (k + i + 1) := by { intro i, apply h₁, },
  have h₇ : ∀ i, a i = (k + i) * (k + i + 1) - c k := by { intro i, rw h₅, rw h₆, },
  have h₈ : ∀ i, c k ≠ 0 := by { intro i, apply h₀.left, },
  have h₉ : ∀ i, a i ≠ 0 := by { intro i, apply h₇, apply h₈, },
  have h₁₀ : ∀ i, c (k + i) ∣ a i := by { intro i, apply h₇
end
