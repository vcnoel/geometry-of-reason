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

  have h₄ : k < m + n + 1,
    by { apply lt_of_add_lt_add h₀.2 h₃ },
  have h₅ : ∀ i in finset.Icc 1 n, c (m + i) - c k = (m + i) * (m + i + 1) - k * (k + 1),
    by { apply finset.forall_mem_of_forall, intro i, apply h₁ },
  have h₆ : ∏ i in finset.Icc 1 n, c (m + i) - c k = ∏ i in finset.Icc 1 n, (m + i) * (m + i + 1) - k * (k + 1),
    by { apply prod_congr rfl, apply h₅ },
  have h₇ : ∏ i in finset.Icc 1 n, (m + i) * (m + i + 1) - k * (k + 1) = ∏ i in finset.Icc 1 n, (m + i) * (m + i + 1) - ∏ i in finset.Icc 
end
