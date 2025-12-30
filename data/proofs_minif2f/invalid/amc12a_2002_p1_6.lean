import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p1
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6))
  (h₁ : fintype (f ⁻¹' {0})) :
  ∑ y in (f⁻¹' {0}).to_finset, y = 7 / 2 :=
begin

  -- First, rewrite the equation in h₀ in the form f(x) = a(x-4)(x-6)
  -- Then, we can write f(x) = a(x-4)(x-6) = a(x²-10x+24)
  -- Then, we can write f(x) = a(x²-10x+24) = a(x²-10x+25-1)
  -- Then, we can write f(x) = a(x²-10x+25-1) = a((x-5)²-1)
  -- Then, we can write f(x) = a((x-5)²-1) = a(x-5)² - a
  -- Then, we can write f(x) = a(x-5)² - a = a(x-5)² - a(1) = a(x-5)² - a*1
  -- Then, we can write f(x) = a(x-5)² - a*1 = a(x-5)² - 1*a = a(x-5)² - a*1
  -- Then, we can write f(x) = a(x-5)²
end
