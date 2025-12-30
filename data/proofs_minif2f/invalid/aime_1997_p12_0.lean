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

  have h₁ : (finset.Icc (1 : ℕ) 44).count (fun n => real.cos (n * π / 180)) =
    (finset.Icc (1 : ℕ) 44).count (fun n => real.sin (n * π / 180)),
  {
    apply finset.count_congr,
    intros n h,
    simp only [real.cos_pi_div_180_eq_sin, sin_pi_div_180_eq_cos] at h,
  },
  have h₂ : (∑ n in finset.Icc (1 : ℕ) 44, real.cos (n * π / 180)) =
    (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)),
  {
    apply finset.sum_congr,
    intros n h,
    simp only [real.cos_pi_div_180_eq_sin, sin_pi_div_180_eq_cos] at h,
  },
  have h₃ : x = 1,
  {
    rw h₀,
    simp only [h₁, h₂],
  },
  have h₄ : int.floor (100 * x) = int.floor (100 * 1),
 
end
