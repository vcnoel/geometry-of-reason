import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_73
  (p q r x : ℂ)
  (h₀ : (x - p) * (x - q) = (r - p) * (r - q))
  (h₁ : x ≠ r) :
  x = p + q - r :=
begin

  -- By the definition of equality, we need to show that (x - p) * (x - q) = (r - p) * (r - q).
  -- This is exactly the hypothesis h₀.
  exact h₀,

end
