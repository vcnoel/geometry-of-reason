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

  have h₄ : (c (m + 1) - c k) = (m + 1) * (m + 2),
  by { rw h₁, simp },
  have h₅ : ∏ i in finset.Icc 1 n, c (m + i) = ∏ i in finset.Icc 1 n, ((m + i) * ((m + i) + 1)),
  by { rw finset.Icc_Icc, congr, exact h₁ },
  have h₆ : ∏ i in finset.Icc 1 n, c (m + i) - ∏ i in finset.Icc 1 n, c i = ∏ i in finset.Icc 1 n, ((m + i) * ((m + i) + 1)) - ∏ i in finset.Icc 1 n, (i * (i + 1)),
  by { rw h₅ },
  have h₇ : ∀ i, i ∈ finset.Icc 1 n → (m + i) * ((m + i) + 1) - i * (i + 1) = (m + i)
end
