import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  let s := finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999),
  let t := { n : ℕ | 100 ≤ n ∧ n ≤ 999 ∧ n % 19 = 7 },
  have h1 : s = t,
  { ext,
    simp, split,
    { intros h1 h2, exact h1 },
    { intros h1, exact ⟨h1.1, h1.2, h1.3⟩ } },
  have h2 : s.card = t.card,
  { rw h1 },
  have h3 : t.card = 52,
  { calc
    t.card = finset.card (finset.range 100) - finset.card (finset.filter (λ x, x % 19 ≠ 7) (finset.range 100)) :
      by { simp [t] }
   ... = finset.card (finset.range 100) - finset.card (finset.filter (λ x, x % 19 ≠ 7) (finset.range 100)) :
      by { simp [finset.range] }
   ... = 100 - finset.card (finset
end
