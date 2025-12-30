import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  -- Define the function f(n) = n^2 + n
  let f : ℕ → ℕ := λ n, n ^ 2 + n,

  -- Show that f(1) = 2
  have f_1_eq_2 : f 1 = 2, by simp,

  -- Show that for all n, f(f(n)) = f(n) + n
  have f_f_eq_f_n_plus_n : ∀ n, f (f n) = f n + n,
  { intro n,
    have n_ge_1 : n ≥ 1, by linarith,
    have n_plus_n_sq_le_2n_sq : n + n ≤ 2 * n, by linarith,
    have n_sq_le_2n_sq : n ^ 2 ≤ 2 * n ^ 2, by linarith,
    have f_n_le_f_n_sq : f n ≤ f (f n), by linarith,
    have f_n_sq_le_f_n_sq_plus_n : f n ^ 2 ≤ f (f n) + n, by linarith,
    have f_n_sq_le_f_n_sq_plus_n_by_2n : f n ^ 2 ≤ f (f
end
