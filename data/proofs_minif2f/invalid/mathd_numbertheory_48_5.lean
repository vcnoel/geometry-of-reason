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

  have h₂ : 3 * b^2 + 2 * b + 1 = 3 * 4^2 + 2 * 4 + 1,
  { rw h₁, },
  have h₃ : 3 * b^2 + 2 * b + 1 = 3 * 16 + 2 * 4 + 1,
  { rw h₂, },
  have h₄ : 3 * b^2 + 2 * b + 1 = 48 + 8 + 1,
  { rw h₃, },
  have h₅ : 3 * b^2 + 2 * b + 1 = 57,
  { rw h₄, },
  have h₆ : 3 * b^2 + 2 * b + 1 = 3 * b^2 + 2 * b + 1,
  { rw h₅, },
  have h₇ : b = b,
  { rw h₆, },
  have h₈ : b = 4,
  { rw h₇ at h₀, },
  exact h₈,

end
