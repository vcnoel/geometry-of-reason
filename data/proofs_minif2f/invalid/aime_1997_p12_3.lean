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

  let g : ℕ → ℝ := λ n, real.cos (n * π / 180) / real.sin (n * π / 180),
  have h₁ : g = λ n, real.tan (n * π / 180),
  { ext n,
    exact real.cos_div_sin (n * π / 180) },
  have h₂ : ∀ n in finset.Icc (1 : ℕ) 44, 0 < real.sin (n * π / 180),
  { intro n,
    have h₃ : 0 < n * π / 180,
    { exact mul_pos (pos_one : (0 : ℕ) < n) (pi_pos : (0 : ℝ) < π) },
    exact sin_pos (n * π / 180) h₃ },
  have h₄ : (∑ n in finset.Icc (1 : ℕ) 44, real.sin (n * π / 180)) ≠ 0,
  { apply ne_of_gt,
    apply sum_pos,
    intro n,
    exact h₂ n },
  have h₅ : ∑ n in finset.Icc (1 : ℕ) 44, real.tan (n
end
