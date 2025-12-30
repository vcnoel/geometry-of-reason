import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p10
  (p q : ℝ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, a (n + 2) - a (n + 1) = a (n + 1) - a n)
  (h₁ : a 1 = p)
  (h₂ : a 2 = 9)
  (h₃ : a 3 = 3 * p - q)
  (h₄ : a 4 = 3 * p + q) :
  a 2010 = 8041 :=
begin

  use minif2f_import.mint_minimisation,
  use minif2f_import.mint_maximisation,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate_inequality,
  use minif2f_import.integrate
end
