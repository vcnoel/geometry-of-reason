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

  have h₁ : (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) ≠ 0,
    by { apply finset.sum_ne_zero,
      intros n hn,
      apply real.cos_ne_zero,
      apply pi_ne_zero,
      apply int.not_div_zero },
  have h₂ : (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)) ≠ 0,
    by { apply finset.sum_ne_zero,
      intros n hn,
      apply real.sin_ne_zero,
      apply pi_ne_zero,
      apply int.not_div_zero },
  have h₃ : (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) ≠ (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)),
    by { apply finset.sum_ne_sum,
      intros n hn,
      apply real.cos_ne_sin,
      apply pi_ne_zero,
      apply int.not_div_zero },
  have h₄ : x = (finset.sum (finset.Icc (1 : ℕ) 
end
