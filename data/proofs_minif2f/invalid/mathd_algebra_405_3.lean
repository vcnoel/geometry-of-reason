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

  -- We can rewrite the given condition as a more convenient form
  let f : ℕ → Prop := λ n, 0 < n ∧ n^2 + 4 * n + 4 < 20,
  have h₁ : f = λ n, 0 < n ∧ n^2 + 4 * n + 4 < 20, by refl,

  -- We can rewrite the given condition as a more convenient form
  have h₂ : ∀ x, x ∈ S ↔ f x, from h₀,

  -- We can rewrite the given condition as a more convenient form
  have h₃ : ∀ x, f x, from λ x, (h₂ x).2 (h₂ x).1,

  -- We can rewrite the given condition as a more convenient form
  have h₄ : ∀ x, x ∈ S, from λ x, (h₂ x).1,

  -- We can rewrite the given condition as a more convenient form
  have h₅ : S.card = ∑ x in S, 1, by simp,

  -- We can rewrite the given condition as a more convenient form
  have h₆ : ∑ x in S, 1 = 
end
