import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_221
  (S : finset ℕ)
  (h₀ : ∀ (x : ℕ), x ∈ S ↔ 0 < x ∧ x < 1000 ∧ x.divisors.card = 3) :
  S.card = 11 :=
begin

  -- Use the given condition to obtain a list of the elements of S.
  let S' := S.toList,
  -- Use the condition that every element of S is a divisor of 999, and has 3 divisors.
  let S'' := [(3, 3), (7, 3), (11, 3), (13, 3), (19, 3), (31, 3), (37, 3), (41, 3), (43, 3), (47, 3), (79, 3)],
  -- Use the condition that every element of S is a divisor of 999, and has 3 divisors.
  have h₁ : S' = S'',
  { ext1,
    { refine h₀ (list.nth S' a),
      { rcases a with a,
        { simp only [a.succ, a.succ.succ] at h₀,
          exact h₀ a },
        { simp only [a.succ] at h₀,
          exact h₀ a } } },
    { simp only [S''.length] } },
  -- Use the condition that every element of S is a divisor of 999, and has
end
