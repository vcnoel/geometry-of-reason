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

  have h₂ : (1319 : ℕ).odd,
  { sorry },

  have h₃ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * (1319/((k : ℝ)*1319))),
  { sorry },

  have h₄ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * (1319/((k : ℝ)*1319))) = (1319/1319) + ∑ k in finset.Icc (2 : ℕ) 1319, ((-1)^(k + 1) * (1319/((k : ℝ)*1319))),
  { sorry },

  have h₅ : (1319/1319) + ∑ k in finset.Icc (2 : ℕ) 1319, ((-1)^(k + 1) * (1319/((k : ℝ)*1319))) =
end
