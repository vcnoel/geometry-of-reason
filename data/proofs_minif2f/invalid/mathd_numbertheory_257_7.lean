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

  have h₂ : ∑ k in (finset.range 101), k = 5050,
  { apply finset.sum_const, },
  have h₃ : ∑ k in (finset.range 101), k - x = ∑ k in (finset.range 101), k - 45,
  { apply finset.sum_congr rfl (λ k hk, by { rw hk, }),
    apply finset.univ_eq_range,
    apply finset.univ_eq_range },
  have h₄ : (sum k in (finset.range 101), k - 45) = 0,
  { apply h₁,
    apply finset.sum_eq_zero },
  have h₅ : 0 = 0,
  { apply eq.refl },
  have h₆ : 0 = 0,
  { apply h₄ },
  have h₇ : 0 = 0,
  { apply h₅ },
  have h₈ : 0 = 0,
  { apply h₆ },
  have h₉ : 0 = 0,
  { apply h₇ },
  have h₁₀ : 0 = 0,
  { apply h
end
