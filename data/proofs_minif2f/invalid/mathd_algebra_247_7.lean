import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_247
  (t s : ℝ)
  (n : ℤ)
  (h₀ : t = 2 * s - s^2)
  (h₁ : s = n^2 - 2^n + 1)
  (n = 3) :
  t = 0 :=
begin

  -- We need to show that t = 0.
  -- From h₁, we have s = n^2 - 2^n + 1.
  have h₂ : s = n^2 - 2^n + 1 := h₁,
  -- We are given n = 3.
  have h₃ : n = 3 := n,
  -- Substituting n = 3 into the equation s = n^2 - 2^n + 1, we get
  -- s = 3^2 - 2^3 + 1.
  have h₄ : s = 3^2 - 2^3 + 1 := h₂.subst h₃,
  -- Evaluating the right-hand side, we get
  -- s = 9 - 8 + 1 = 2.
  have h₅ : s = 2 := h₄,
  -- Substituting s = 2 into the equation t = 2 * s - s^2, we get
  -- t = 2 * 2 - 2^2.
  have h₆ : t = 2 * 2 - 2^2 := h₀.subst
end
