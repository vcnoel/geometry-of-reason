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

  -- Let's start by rewriting the equation using the distributive property of multiplication over addition.
  rw [← mul_sub, ← mul_sub, ← mul_sub, mul_sub, mul_sub, mul_sub, mul_sub, mul_sub] at h₀,
  -- Now, let's apply the fact that the product of two numbers is zero if and only if at least one of the numbers is zero.
  have h₂ : x - p = 0 ∨ x - q = 0 ∨ r - p = 0 ∨ r - q = 0,
    by simpa [not_and, not_or, not_imp, not_not] using h₀,
  -- Now, let's consider the three cases given by h₂.
  cases h₂ with
  | inl h₃ =>
    -- If x - p = 0, then x = p.
    -- But then r - p = 0 by h₀, and so x = r.
    -- This contradicts h₁.
    contradiction,
  | inr (inl h₃) =>
    -- If x - q = 0, then x = q.
    -- But then r - q = 0 by h₀, and so x = r
end
