import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_370
  (n : ℕ)
  (h₀ : n % 7 = 3) :
  (2 * n + 1) % 7 = 0 :=
begin

  -- The statement (2 * n + 1) % 7 = 0 is equivalent to (2 * n + 1) % 7 = 0,
  -- so we can prove this directly.
  have h₁ := (2 * n + 1) % 7 = 0,
  -- Now we need to prove h₁.
  -- Since 2 * n + 1 % 7 = 0, we can conclude that 2 * n % 7 = 6,
  have h₂ := (2 * n) % 7 = 6,
  -- Now we need to prove h₂.
  -- Since 2 * n % 7 = 6, we can conclude that n % 7 = 3,
  have h₃ := (n % 7 = 3),
  -- Now we need to prove h₃.
  -- Since n % 7 = 3, we can conclude that n = 7k + 3 for some k,
  have h₄ := n = 7 * k + 3,
  -- Now we need to prove h₄.
  -- Since n = 7k + 3, we can conclude that 2
end
