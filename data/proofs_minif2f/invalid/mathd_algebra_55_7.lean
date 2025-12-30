import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_55
  (q p : ℝ)
  (h₀ : q = 2 - 4 + 6 - 8 + 10 - 12 + 14)
  (h₁ : p = 3 - 6 + 9 - 12 + 15 - 18 + 21) :
  q / p = 2 / 3 :=
begin

  -- We start by using the equality of q and p as given in the problem
  have h₂ := h₀,
  have h₃ := h₁,

  -- Now we can rewrite q as 2 - 4 + 6 - 8 + 10 - 12 + 14
  have h₄ : q = 2 - 4 + 6 - 8 + 10 - 12 + 14 := h₀,

  -- And rewrite p as 3 - 6 + 9 - 12 + 15 - 18 + 21
  have h₅ : p = 3 - 6 + 9 - 12 + 15 - 18 + 21 := h₁,

  -- We can now calculate the sum of the coefficients of q
  have h₆ : (2 - 4 + 6 - 8 + 10 - 12 + 14).sum = 2 + 6 + 10 + 14 := by
    ring_nf,
  have h₇ : (2 + 6 + 10 + 14).sum = 32 := by
    ring_nf,

  -- We can now calculate the sum of the coefficients of
end
