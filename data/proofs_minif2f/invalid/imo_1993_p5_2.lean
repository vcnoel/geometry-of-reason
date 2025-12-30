import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  let f := λ n, n + 1,
  have h1 : f 1 = 2, by { rw f, refl },
  have h2 : ∀ n, f (f n) = f n + n, by { intro n, rw f, refl },
  have h3 : ∀ n, f n < f (n + 1), by { intro n, rw f, refl },
  exact ⟨f, h1, h2, h3⟩,

end
