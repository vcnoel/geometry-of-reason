import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  have h₂ : (n + 5) / (n - 3) = (n - 3 + 8) / (n - 3),
  { rw add_sub_cancel' },
  have h₃ : (n - 3 + 8) / (n - 3) = (n - 3) / (n - 3) + 8 / (n - 3),
  { ring },
  have h₄ : (n - 3) / (n - 3) = 1,
  { ring },
  have h₅ : 1 + 8 / (n - 3) = 1 + 8 / (n - 3),
  { refl },
  have h₆ : 1 + 8 / (n - 3) = 9 / (n - 3),
  { ring },
  have h₇ : 9 / (n - 3) = 9 / (n - 3),
  { refl },
  have h₈ : 9 / (n - 3) = 2,
  { have h₉ : n - 3 ≠ 0,
    { intro h₁₀,

end
