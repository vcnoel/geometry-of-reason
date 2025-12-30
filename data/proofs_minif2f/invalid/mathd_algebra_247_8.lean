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

  -- First, we will use the given equation h₀ to express t in terms of s.
  have h₂ : t = 2 * s - s^2,
  from h₀,

  -- Next, we will use the given equation h₁ to express s in terms of n.
  have h₃ : s = n^2 - 2^n + 1,
  from h₁,

  -- Since we know that n = 3, we can substitute this value into the equation for s.
  have h₄ : s = 3^2 - 2^3 + 1,
  from h₃.subst n = 3,

  -- Simplifying the equation for s, we get s = 7.
  have h₅ : s = 7,
  from h₄,

  -- Now that we have expressed s in terms of n, we can substitute this value into the equation for t.
  have h₆ : t = 2 * 7 - 7^2,
  from h₂.subst h₅,

  -- Simplifying the equation for t, we get t = 0.
  have h₇ : t = 0,
  from h₆
end
