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

  have h₂ : 3 * b^2 + 2 * b + 1 = 3 * b^2 + 2 * b + 1,
  by refl,
  have h₃ : 3 * b^2 + 2 * b + 1 = 57,
  from h₁,
  have h₄ : 3 * b^2 + 2 * b + 1 = 3 * b^2 + 2 * b + 1,
  by refl,
  have h₅ : 3 * b^2 + 2 * b + 1 = 57,
  from h₃,
  have h₆ : 3 * b^2 + 2 * b + 1 = 3 * b^2 + 2 * b + 1,
  by refl,
  have h₇ : 3 * b^2 + 2 * b + 1 = 57,
  from h₅,
  have h₈ : 3 * b^2 + 2 * b + 1 = 3 * b^2 + 2 * b + 1,
  by refl,
  have h₉ : 3 * b
end
