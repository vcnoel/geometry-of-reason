import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  -- Define the predicate p(n) = 6 divides (4n - 2)
  def p : ℤ → Prop := λ n, 6 ∣ (4 * n - (2 : ℤ)),
  -- Define the set of natural numbers that satisfy the predicate
  def A := {n ∈ finset.range 60 | p n},
  -- Define the set of natural numbers that do not satisfy the predicate
  def B := {n ∈ finset.range 60 | ¬ p n},
  -- We know that 60 = 20 + 20 + 20
  have h1 : 60 = 20 + 20 + 20,
  -- We know that |A| + |B| = 60
  have h2 : finset.card A + finset.card B = 60,
  -- We know that |A ∪ B| = 60
  have h3 : finset.card (A ∪ B) = 60,
  -- By the inclusion-exclusion principle, |A ∪ B| = |A| + |B| - |A ∩ B|
  have h4 : finset.card (A ∪ B) = finset.card
end
