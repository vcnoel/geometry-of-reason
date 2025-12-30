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

  calc
    int.floor (100 * x) = int.floor (100 * (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180))) : by simp [h₀]
   ... = int.floor ((∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)) * 100) : by ring
   ... = int.floor ((∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)) * 100) : by ring
   ... = int.floor (241) : by calc
      (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) / (∑ n in fin
end
