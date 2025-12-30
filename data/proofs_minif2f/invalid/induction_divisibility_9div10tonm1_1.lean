import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  -- 0 < n
  have h₁ : 0 < n.succ,
  from lt_of_le_of_lt n.zero_le h₀,

  -- 9 ∣ (10^1 - 1)
  have h₂ : 9 ∣ (10^1 - 1),
  by simp,

  -- 9 ∣ (10^(n.succ) - 1)
  have h₃ : 9 ∣ (10^(n.succ) - 1),
  by { apply h₂, exact (pow_add 10 (n.succ - 1) (pow_add 10 n (n.succ - 1))).symm },

  -- 9 ∣ (10^n - 1)
  have h₄ : 9 ∣ (10^n - 1),
  by { apply h₃, exact (pow_add 10 n 1).symm },

  -- 9 ∣ (10^n - 1)
  exact h₄,

end
