import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_257
  (x : ℕ)
  (h₀ : 1 ≤ x ∧ x ≤ 100)
  (h₁ : 77∣(∑ k in (finset.range 101), k - x)) :
  x = 45 :=
begin

  by_contra h₂,
  have h₃ : 77∣(∑ k in (finset.range 101), k - x),
  { apply h₁, },
  have h₄ : x = 45,
  { apply h₃,
    apply h₂, },
  have h₅ : ¬(x = 45),
  { apply h₂, },
  contradiction,

end
