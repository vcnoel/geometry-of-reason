import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1979_p1
  (p q : ℕ)
  (h₀ : 0 < q)
  (h₁ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = p/q) :
  1979 ∣ p :=
begin

  have h₂ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = 1319/1 - 1318/2 + 1317/3 - 1316/4 +... + 2/1319 - 1/1320,
    by {rw finset.sum_Icc, rw finset.sum_congr rfl (λ i hi, by {refl})},
  have h₃ : 1319/1 - 1318/2 + 1317/3 - 1316/4 +... + 2/1319 - 1/1320 = (1979/2) * (1/1 - 1/2 + 1/3 - 1/4 +... + 1/1319 - 1/1320),
    by {rw h₂, congr, ext k, cases k; rw [div_neg_one, div_neg_one]},
  have h₄ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k
end
