import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin

  have h₂ : 3 * b^2 + 2 * b + 1 = 57 → 3 * b^2 + 2 * b = 56,
  { intro h₃,
    rw h₃,
    rw add_zero,
    reflexivity },
  have h₄ : b^2 + (2/3) * b = 56 / 3,
  { rw h₂,
    ring },
  have h₅ : b^2 + (2/3) * b = 56 / 3,
  { rw h₄ },
  have h₆ : b^2 + (2/3) * b = 56 / 3,
  { rw h₅ },
  have h₇ : b^2 + (2/3) * b = 56 / 3,
  { rw h₆ },
  have h₈ : (2/3) * b = 56 / 3 - b^2,
  { rw h₇ },
  have h₉ : (2/3) * b = 56 / 3 - b^2,
  { rw h₈ },
  have h₁₀ : (2/3)
end
