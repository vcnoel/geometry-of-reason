import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  let f : ℕ → ℕ := λ n, n + 1,
  exact ⟨f, by simp, by simp [add_assoc, add_comm], by { intros n, exact lt_add_one n}⟩,

end
