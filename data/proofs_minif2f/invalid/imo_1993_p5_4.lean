import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  -- Let's start by defining the function f(n) = n^2 + 1.
  let f : ℕ → ℕ := λ n, n^2 + 1,

  -- First, we need to show that f(1) = 2.
  show f 1 = 2,
  by rw [f, pow_zero, add_one],

  -- Next, we need to show that f(f(n)) = f(n) + n.
  show ∀ n, f (f n) = f n + n,
  intro n,
  by rw [f, f, pow_add, add_assoc, add_one],

  -- Finally, we need to show that f(n) < f(n+1) for all n.
  show ∀ n, f n < f (n + 1),
  intro n,
  by rw [f, f, pow_add, add_one, add_one, lt_add_one],


end
