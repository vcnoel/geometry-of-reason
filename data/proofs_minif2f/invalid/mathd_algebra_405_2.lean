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

  have : ∀ x, 0 < x ∧ x^2 + 4 * x + 4 < 20,
    by {intro x,
        apply h₀,
        left, refl,
        linarith},
  have : ∀ x, x ∈ S,
    by {intro x, apply h₀, left, refl},
  have : S = {2, 6},
    by {ext,
        intro x,
        apply finset.mem_set_of,
        split,
        { intro h,
          have : x^2 + 4 * x + 4 < 20,
            by linarith,
          have : x^2 + 4 * x + 4 = 4 * (x + 1)^2,
            by ring,
          have : x + 1 = 1 ∨ x + 1 = 2 ∨ x + 1 = 3 ∨ x + 1 = 4,
            by linarith,
          have : x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3,
            by linarith,
          have : x = 2 ∨ x = 6,
            by {cases h, cases h,
                { simp only [add_right
end
