import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_35
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∣ (nat.sqrt 196)) :
  ∑ k in S, k = 24 :=
begin

  apply finset.sum_eq_single,
  { intros k hk,
    cases k,
    { exact absurd k.succ_ne_zero rfl },
    { cases k,
      { exact absurd k.succ_ne_zero rfl },
      { exact absurd k.succ_ne_zero rfl } } },
  { intros k hk,
    cases k,
    { exact absurd k.succ_ne_zero rfl },
    { cases k,
      { exact absurd k.succ_ne_zero rfl },
      { exact absurd k.succ_ne_zero rfl } } },
  { intros k hk,
    apply finset.mem_set_of,
    apply nat.sqrt_eq_pow_two_of_div,
    exact h₀ k },
  { intros k hk,
    exact absurd k rfl }

end
