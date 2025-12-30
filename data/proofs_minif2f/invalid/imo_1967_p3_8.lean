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

  have h₄ : ∀ i, i ∈ finset.Icc 1 n → c (m + i) = (m + i) * ((m + i) + 1),
  from λ i hi, h₁ (m + i),
  have h₅ : ∀ i, i ∈ finset.Icc 1 n → c k = k * (k + 1),
  from λ i hi, h₁ k,

  have h₆ : ∀ i, i ∈ finset.Icc 1 n → c (m + i) - c k = (m + i) * ((m + i) + 1) - k * (k + 1),
  from λ i hi, by { rw [h₄ i hi, h₅ i hi] },

  have h₇ : ∀ i, i ∈ finset.Icc 1 n → c (m + i) - c k = (m + i) * (m + i + 1 - k * (k + 1) / (m + i) * (m + i + 1)),
  from λ i hi, by { rw [h₆ i hi, tsub_eq_sub
end
