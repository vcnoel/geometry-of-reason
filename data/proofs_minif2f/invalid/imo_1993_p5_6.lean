import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  let f := λ n, 2 ^ (n - 1),
  have f_1 : f 1 = 2 ^ (1 - 1) = 1 ^ 0 = 1 ≠ 2,
  have f_1' : f 1 = 2,
  { rw [f, two_pow_one, one_pow, sub_self] },
  have f_fn : ∀ n, f (f n) = f n + n,
  { intro n,
    rw [f, f, two_pow_add, add_left_inj, two_pow_add, add_right_inj, two_pow_add,
        two_pow_add, add_assoc, add_left_cancel, two_pow_add, add_right_inj] },
  have f_n_lt_fn1 : ∀ n, f n < f (n + 1),
  { intro n,
    rw [f, f, two_pow_add, two_pow_add, two_pow_add, add_one, two_pow_one],
    exact two_pow_pos (succ_pos n) },
  show ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f
end
