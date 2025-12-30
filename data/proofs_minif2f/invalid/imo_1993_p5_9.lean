import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  let f := λ n, if n = 0 then 0 else 2 * n,
  use f,
  { exact f 1 = 2, },
  { intros n,
    have h1 := f (f n) = 2 * f n,
    have h2 := f n = if n = 0 then 0 else 2 * n,
    have h3 := if n = 0 then 0 else 2 * n = n + n,
    exact h1.subst h2.trans h3 },
  { intros n,
    have h1 := f n = if n = 0 then 0 else 2 * n,
    have h2 := f (n + 1) = if n + 1 = 0 then 0 else 2 * (n + 1),
    have h3 := if n + 1 = 0 then 0 else 2 * (n + 1) > if n = 0 then 0 else 2 * n,
    exact h1.trans h3 },

end
