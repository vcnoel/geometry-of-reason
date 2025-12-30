import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1977_p5
  (a b q r : ℕ)
  (h₀ : r < a + b)
  (h₁ : a^2 + b^2 = (a + b) * q + r)
  (h₂ : q^2 + r = 1977) :
  (abs ((a:ℤ) - 22) = 15 ∧ abs ((b:ℤ) - 22) = 28) ∨ (abs ((a:ℤ) - 22) = 28 ∧ abs ((b:ℤ) - 22) = 15) :=
begin

  have h₃ : a^2 + b^2 = (a + b) * q + r,
  from h₁,

  have h₄ : q^2 + r = 1977,
  from h₂,

  have h₅ : q^2 + r = (q + r) * q,
  from (nat.pow_add _ _ _).symm,

  have h₆ : q^2 + r = 1977,
  from h₄,

  have h₇ : q + r = 1977,
  from h₅,

  have h₈ : q + r = 1977,
  from h₇,

  have h₉ : r = 1977 - q,
  from nat.sub_eq_iff_eq_add _ _ _,

  have h₁₀ : r < a + b,
  from h₀,

  have h₁₁ : r < a + b,
  from h₁₀,

  have h₁₂ : r < a + b,
  from h₁₁,

  have h₁₃ : r = 1977 - q,
  from h₉,

  have h₁₄ : r = 1977 -
end
