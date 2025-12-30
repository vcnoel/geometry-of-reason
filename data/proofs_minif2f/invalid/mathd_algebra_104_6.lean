import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  have h₁ : 125 / 8 = 25 / 16,
  { have h₂ : 125 = 25 * 5,
    { norm_num },
    have h₃ : 8 = 5 * 8 / 5,
    { norm_num },
    have h₄ : 125 / 8 = (25 * 5) / (5 * 8 / 5),
    { rw h₂, rw h₃ },
    have h₅ : 125 / 8 = 25 * 5 / (5 * 8 / 5),
    { norm_num },
    have h₆ : 125 / 8 = 25 * 5 / (5 * (8 / 5)),
    { norm_num },
    have h₇ : 125 / 8 = 25 * 5 / ((8 / 5) * 5),
    { norm_num },
    have h₈ : 125 / 8 = (25 * 5) / ((8 / 5) * 5),
    { norm_num },
    have h₉ : 125 / 8 = (25 * 5) / ((8 * 5) / 5
end
