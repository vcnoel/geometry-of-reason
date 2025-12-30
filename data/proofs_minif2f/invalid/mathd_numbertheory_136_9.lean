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
  have h₂ : 123 * n = 39500 - 17,
    from h₁,
  have h₃ : 123 * n = 39383,
    from h₂,
  have h₄ : n = 39383 / 123,
    from h₃,
  have h₅ : n = 321,
    from h₄,
  exact h₅

end
