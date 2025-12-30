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

  -- expand the product on the left-hand side of h₀
  have h₂ : x^2 - (p + q) * x + p * q = x^2 - (r - p + r - q) * x + (r - p) * (r - q),
  by {rw [h₀, add_sub_cancel' (p + q) r, add_sub_cancel' (r - p) q]},
  -- apply the quadratic formula to both sides of h₂
  have h₃ : x = (p + q - r + (p - q) * sqrt (1 - ((p - q)^2) / ((p - r) * (q - r)))) / 2,
  by {rw [sub_add_sub_cancel p q, sub_add_sub_cancel r p, sub_add_sub_cancel r q,
        sub_sub_cancel p r, sub_sub_cancel q r, sub_sub_cancel p q, mul_div_cancel' (p - q)^2 (p - q),
        mul_div_cancel' (p - q)^2 (q - r), mul_div_cancel' (p - q)^2 (p - r), mul_div_cancel' (q - r)^2 (p -
end
