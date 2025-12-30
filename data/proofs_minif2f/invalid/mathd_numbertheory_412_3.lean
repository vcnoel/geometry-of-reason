import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  have h₂ : ((x + 1) % 19) = 5 := by
  { rw h₀ at h₂,
    simp },
  have h₃ : ((y + 5) % 19) = 12 := by
  { rw h₁ at h₃,
    simp },
  have h₄ : (5 * 12) % 19 = 60 % 19 := by
  { rw h₂ at h₃ at h₄,
    simp },
  have h₅ : 60 % 19 = 3 := by
  { rw h₄,
    simp },
  have h₆ : (5^2) % 19 = 25 % 19 := by
  { simp },
  have h₇ : 25 % 19 = 6 := by
  { rw h₆,
    simp },
  have h₈ : (12^3) % 19 = 1728 % 19 := by
  { simp },
  have h₉ : 1728 % 19 = 8 := by
  { rw h₈,
    simp },
  have h₁₀ : (6 * 8) %
end
