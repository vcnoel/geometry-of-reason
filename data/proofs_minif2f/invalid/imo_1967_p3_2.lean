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

  have h₄ : c (m + i) = (m + i) * ((m + i) + 1) := h₁ (m + i),
  have h₅ : c i = i * (i + 1) := h₁ i,
  have h₆ : (c (m + i) - c k) = (m + i) * ((m + i) + 1) - k * (k + 1) := by
    { rw [h₄, h₅, h₄] },
  have h₇ : (c (m + i) - c k) = (m + i) * (m + i + 1 - k * (k + 1) / (m + i) * (m + i + 1)) := by
    { rw [h₆] },
  have h₈ : (c (m + i) - c k) = (m + i) * ((m + i + 1 - k) * ((m + i + 1) / (m + i))) := by
    { rw [h₇] },
  have h₉ : (m
end
