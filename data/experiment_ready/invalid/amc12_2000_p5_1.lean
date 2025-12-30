import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p5
  (x p : ℝ)
  (h₀ : x < 2)
  (h₁ : abs (x - 2) = p) :
  x - p = 2 - 2 * p :=
begin

  have h₂ : x - p = 2 - p,
  by { rw [← sub_sub, h₁], },
  have h₃ : x = 2 - p,
  by { rw [sub_sub, h₂], },
  have h₄ : 0 < p,
  by { linarith, },
  have h₅ : 0 < x,
  by { linarith, },
  have h₆ : x - 2 < 0,
  by { linarith, },
  have h₇ : 2 - x > 0,
  by { linarith, },
  have h₈ : p < 1,
  by { linarith, },
  have h₉ : 0 < 2 - p,
  by { linarith, },
  have h₁₀ : 0 < 2 * p,
  by { linarith, },
  have h₁₁ : 2 * p < 2,
  by { linarith, },
  have h₁₂ : 2 - p < 2,
  by { linarith, },
  have h₁₃ : 2 - 2 * p < 0,
  by { linarith, },
 
end
