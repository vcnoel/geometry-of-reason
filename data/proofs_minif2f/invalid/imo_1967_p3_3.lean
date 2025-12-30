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

  -- We know that m < k, so we can write k = m + k' for some k' > 0.
  let k' := k - m,
  have hk'_pos : 0 < k' := by {rw [k, hk'_pos], exact h₀.right},
  -- Then we have c i = i * (i + 1) for all i.
  have hci : ∀ i, c i = i * (i + 1) := by {intro i, exact h₁ i},
  -- Now we can rewrite the left-hand side as a product of c (m + i) - c k.
  have hlhs : (∏ i in finset.Icc 1 n, c i) = ∏ i in finset.Icc 1 n, (c (m + i) - c k) :=
    
end
