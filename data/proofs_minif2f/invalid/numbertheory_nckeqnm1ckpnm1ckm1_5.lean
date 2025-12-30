import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_nckeqnm1ckpnm1ckm1
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₁ : k ≤ n) :
  nat.choose n k = nat.choose (n - 1) k + nat.choose (n - 1) (k - 1) :=
begin

  have h₂ : 0 < n - 1 ∧ 0 < k ∧ k ≤ n - 1,
  by
  { split,
    { apply nat.sub_pos_of_lt,
      exact h₀.1 },
    { split,
      { apply nat.sub_pos_of_lt,
        exact h₀.2 },
      { apply nat.le_of_lt_sub_lt,
        exact h₁,
        exact h₀.1 } } },
  rw nat.choose_eq_factorial_div,
  rw nat.choose_eq_factorial_div at h₁,
  rw nat.choose_eq_factorial_div,
  rw nat.factorial_eq_mul_factorial_sub_one,
  rw nat.factorial_eq_mul_factorial_sub_one at h₁,
  rw nat.factorial_eq_mul_factorial_sub_one,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,
  rw h₁,

end
