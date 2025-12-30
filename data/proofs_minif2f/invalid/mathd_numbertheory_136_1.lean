import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_136
  (n : ℕ)
  (h₀ : 123 * n + 17 = 39500) : n = 321 :=
begin

  have h₁ : 123 * n + 17 = 39500,
  from h₀,
  have h₂ : 123 * n = 39883,
  from h₁.sub 17,
  have h₃ : n = 323,
  from h₂ / 123,
  have h₄ : n = 321,
  from h₃.sub 2,
  exact h₄

end
