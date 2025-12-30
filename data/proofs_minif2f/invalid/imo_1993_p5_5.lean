import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  let f := λ n, n * 2 + 1,
  have h1 : f 1 = 2, by simp,
  have h2 : ∀ n, f (f n) = f n + n,
  { intro n,
    have h3 : f n = n * 2 + 1, by simp,
    have h4 : f (f n) = (n * 2 + 1) * 2 + 1, by simp,
    have h5 : (n * 2 + 1) * 2 + 1 = n * 2 * 2 + 2 + 1, by ring,
    have h6 : n * 2 * 2 + 2 + 1 = n * 2 * 2 + n + 1, by ring,
    have h7 : n * 2 * 2 + n + 1 = n * 2 + 2 * n + 1, by ring,
    have h8 : n * 2 + 2 * n + 1 = n * 2 + n + n, by ring,
    have h9 : n * 2 + n + n = f n
end
