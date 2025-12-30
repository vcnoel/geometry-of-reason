import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1997_p12
  (x : ℝ)
  (h₀ : x = (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180))) :
  int.floor (100 * x) = 241 :=
begin

  -- rewrite x
  have h₁ : x = (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)),
  from h₀,

  -- calculate numerator and denominator separately
  have h₂ : (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) = 
    ∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180),
  from rfl,

  have h₃ : (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)) = 
    ∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180),
  from rfl,

  -- use the formula for sum of cosines and sines
  have h₄ : (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) = 
    (
end
