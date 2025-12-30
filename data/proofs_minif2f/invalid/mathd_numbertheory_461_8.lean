import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_461
  (n : ℕ)
  (h₀ : n = finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7))) :
  (3^n) % 8 = 1 :=
begin

  cases n,
  { rw h₀,
    simp only [finset.card, finset.filter, finset.Icc, finset.range],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
    simp only [finset.card],
   
end
