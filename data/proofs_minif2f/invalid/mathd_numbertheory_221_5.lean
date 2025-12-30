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

  -- 1. Enumerate the numbers that satisfy the conditions
  let S' := {x | x ∈ S ∧ x.divisors.card = 3},
  let S'' := {x | x ∈ S' ∧ 0 < x ∧ x < 1000},
  have h₁ : S'' = S, from
    by {
      ext x,
      split,
      { intros hx, exact hx.1.1 },
      { intros hx, exact ⟨hx.1.1, hx.1.2, hx.1.3⟩ }
    },
  -- 2. Compute the number of elements in S''
  have h₂ : S''.card = 11, from
    by {
      apply finset.card_congr,
      apply finset.ext,
      intros x,
      split,
      { intros hx,
        exact
          if hx.1.2 then
            if hx.1.3 then
              if hx.1.4 then
                if hx.1.5 then
                  if hx.1.6 then
                    if hx.1.7 then
                      if hx.1.8 then
                        if hx.1.9 then
                          if hx.1
end
