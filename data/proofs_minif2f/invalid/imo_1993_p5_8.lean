import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  -- Define a function that maps each natural number to the next power of 2
  let f := λ n, 2 ^ n,

  -- Show that f(1) = 2
  have h1 : f 1 = 2,
  { rw f,
    refl },

  -- Show that f(f(n)) = f(n) + n
  have h2 : ∀ n, f (f n) = f n + n,
  { intro n,
    rw f,
    rw f,
    exact (pow_add 2 n n).symm },

  -- Show that f(n) < f(n+1) for all n
  have h3 : ∀ n, f n < f (n + 1),
  { intro n,
    rw f,
    rw f,
    exact (lt_pow_pow_of_lt_one n.succ n.succ).symm },

  -- Show that f is a solution
  show ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)),
  { use f,
    exact ⟨h1, h2
end
