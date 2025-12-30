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

  -- We will use the `gcd` function to prove this theorem
  -- The idea is to show that the `gcd` of the product of `c i` and the product of `c (m + i) - c k`
  -- is equal to `c k`, which will prove the theorem
  have gcd_eq_c_k : gcd (∏ i in finset.Icc 1 n, c i) (∏ i in finset.Icc 1 n, (c (m + i) - c k)) = c k,
  {
    -- We will use the Euclidean algorithm to prove this equality
    -- The Euclidean algorithm states that `gcd a b = gcd b (a % b)`
    -- We will use this algorithm to simplify the problem
    have gcd_eq_c_k_1 : gcd (∏ i in finset.Icc 1 n, c i) (∏ i in finset.Icc 1 n, (c (m + i) - c k)) =
      gcd (∏ i in finset.Icc 1 n, c i) (∏ i in finset.Icc 1 n, (c (m + i) - c k) % (∏ i
end
