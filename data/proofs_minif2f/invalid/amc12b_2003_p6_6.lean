import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p6
  (a r : ℝ)
  (u : ℕ → ℝ)
  (h₀ : ∀ k, u k = a * r^k)
  (h₁ : u 1 = 2)
  (h₂ : u 3 = 6) :
  u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3) :=
begin

  by_contradiction h,
  have h₃ : u 0 ≠ 2 / real.sqrt 3 ∧ u 0 ≠ - (2 / real.sqrt 3),
  from not_or_not h,
  have h₄ : ∀ k, u (k + 3) = u k,
  from funext (fun k => by { rw [h₀, h₀, h₀], abel }),
  have h₅ : u 0 = u 3,
  from h₄ 0,
  have h₆ : u 0 = 6,
  from h₅,
  have h₇ : 6 = 2,
  from h₁,
  have h₈ : false,
  from h₇,
  contradiction,

end
