import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p8
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x ≠ y)
  (h₃ : x + 2 / x = y + 2 / y) :
  x * y = 2 :=
begin

  have h₄ := (sub_nonneg.2 (h₃ - y - 2 / y)).ne,
  have h₅ := (sub_nonneg.2 (h₃ - x - 2 / x)).ne,
  have h₆ := (sub_nonneg.2 (h₃ - x - 2 / x - y - 2 / y)).ne,
  have h₇ := (sub_nonneg.2 (h₃ - x - 2 / x - y - 2 / y + x + y + 2)).ne,
  have h₈ := (sub_nonneg.2 (h₃ - x - 2 / x - y - 2 / y + x + y + 2 - 2)).ne,
  have h₉ := (sub_nonneg.2 (h₃ - x - 2 / x - y - 2 / y + x + y + 2 - 2 - 2)).ne,
  have h₁₀ := (sub_nonneg.2 (h₃ - x - 2 / x - y - 2 / y + x + y + 2 - 2 - 2 - 2)).ne,

end
