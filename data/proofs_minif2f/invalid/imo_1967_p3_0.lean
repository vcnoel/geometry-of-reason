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

  have h₄ : ∀ i, (c (m + i) - c k) = (m + i) * (m + i + 1) - k * (k + 1),
    from λ i, by rw [h₁ (m + i), h₁ k, sub_eq_add_neg, add_sub_cancel'],
  have h₅ : ∀ i, (m + i) * (m + i + 1) - k * (k + 1) = (m + i) * (m + i + 1) - ((k + 1) * (k + 1)),
    from λ i, by rw [sub_add, sub_sub, sub_sub, sub_sub, sub_sub, sub_sub, sub_sub],
  have h₆ : ∀ i, (m + i) * (m + i + 1) - ((k + 1) * (k + 1)) = (m + i) * (m + i + 1) - (k + 1) * (k + 1),
    from λ i, by rw [sub_sub, sub_sub, sub_sub, sub_sub],
  have h₇ : ∀ i
end
