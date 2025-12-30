import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1979_p1
  (p q : ℕ)
  (h₀ : 0 < q)
  (h₁ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = p/q) :
  1979 ∣ p :=
begin

  -- Step 1: Express p/q as a sum of terms
  have p_q_sum : p/q = ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)),
    from h₁,

  -- Step 2: Use the fact that 1979 = 7 * 283 to reduce the problem to the case where p/q is a sum of terms with denominators 7k
  have p_q_sum_7k : p/q = ∑ k in finset.Icc (1 : ℕ) 188, ((-1)^(7 * k + 1) * ((1 : ℝ)/(7 * k))),
    from have h₂ : ∀ k in finset.Icc (1 : ℕ) 1319, 7 * k ≤ 1319, from λ k hk, le_trans (mul_le_mul_left (7 : ℕ) hk) (le_of_lt (h₀.trans (le_of_lt (fact.2 1)))),
      have h₃ : ∀ k in finset.Icc (1 : ℕ) 1319, 7 * k ≥ 1, from λ
end
