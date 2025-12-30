import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1984_p2
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : ¬ 7 ∣ a)
  (h₂ : ¬ 7 ∣ b)
  (h₃ : ¬ 7 ∣ (a + b))
  (h₄ : (7^7) ∣ ((a + b)^7 - a^7 - b^7)) :
  19 ≤ a + b :=
begin

  -- Step 1: We can factor the expression (a + b)^7 - a^7 - b^7
  have h₅ : (a + b)^7 - a^7 - b^7 = ∑ i in finset.range 7, (a + b)^i * (-a^i - b^i),
  by simp [pow_sub_pow_add_pow_sub],

  -- Step 2: Using the distributive law, we can split the sum into two parts
  have h₆ : ∑ i in finset.range 7, (a + b)^i * (-a^i - b^i) = ∑ i in finset.range 7, (a + b)^i * (-a^i) + ∑ i in finset.range 7, (a + b)^i * (-b^i),
  by simp [add_mul, mul_comm],

  -- Step 3: We can split the sum into two parts
  have h₇ : ∑ i in finset.range 7, (a + b)^i * (-a^i) = -∑ i in finset.range 7, (a + b)^i * a
end
