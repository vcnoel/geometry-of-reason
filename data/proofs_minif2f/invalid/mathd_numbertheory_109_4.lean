import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in finset.Icc 1 100, v k) % 7 = 4 :=
begin

  -- Step 1: Define the sum
  let s := ∑ k in finset.Icc 1 100, v k,
  -- Step 2: Use the definition of v to rewrite the sum
  have h₁ := sum_congr h₀ (finset.Icc 1 100),
  -- Step 3: Simplify the sum
  have h₂ := congr_arg (λ x, x % 7) h₁,
  -- Step 4: Calculate the sum modulo 7
  have h₃ := calc
    (∑ k in finset.Icc 1 100, v k) % 7 = (∑ k in finset.Icc 1 100, (2 * k - 1) % 7) : by rw h₂
   ... = ∑ k in finset.Icc 1 100, (2 * k % 7 - 1) : by congr_arg (λ x, x - 1)
   ... = 2 * (∑ k in finset.Icc 1 100, k % 7) - 100 : by congr_arg (λ x, 2 * x - 1)
   ... = 2
end
