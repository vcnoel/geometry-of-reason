import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  let A := finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999),
  let B := { x | x % 19 = 7 },
  have h1 : A = B.inter (finset.Icc 100 999),
  { ext1 x,
    split,
    { intro hx,
      have h2 : 100 ≤ x ∧ x ≤ 999, by simpa only [finset.mem_Icc] using hx,
      have h3 : x % 19 = 7, by simpa only [finset.mem_filter] using hx,
      exact ⟨h2, h3⟩ },
    { rintro ⟨h2, h3⟩,
      exact h2.1, },
    { rintro ⟨h2, h3⟩,
      exact h3, },
    { intro hx,
      exact hx.2, }, },
  have h2 : finset.card A = finset.card (B.inter (finset.Icc 100 999)),
  by simp only [h1],
  have h3 : finset.card (B.inter (finset.Icc 100 999)) = finset.card B * finset
end
