import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_405
  (S : finset ℕ)
  (h₀ : ∀ x, x ∈ S ↔ 0 < x ∧ x^2 + 4 * x + 4 < 20) :
  S.card = 2 :=
begin

  let f : ℕ → Prop := λ x, x^2 + 4 * x + 4 < 20,
  let S' := { x | f x },
  have h₁ : S = S',
  { ext1 x,
    exact h₀ x },
  have h₂ : ∀ x, f x ↔ 0 < x ∧ x < 5,
  { rintro x (rfl | rfl),
    { exact and.intro (by norm_num) (by norm_num) },
    { exact and.intro (by norm_num) (by norm_num) } },
  have h₃ : S' = {0, 1, 2, 3, 4},
  { rw h₂,
    exact set.ext (λ x, by cases x; simp) },
  have h₄ : S'.card = 5,
  { rw h₃,
    exact finset.card_univ 5 },
  have h₅ : S'.card = 2,
  { exact false.elim (ne_of_lt (lt_of_le_of_lt (le_card) (lt_card _ _))) },
  exact absurd h₄ h₅

end
