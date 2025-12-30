import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_326
  (n : ℕ)
  (h₀ : (↑n - 1) * ↑n * (↑n + 1) = (720 : ℤ)) :
  (n + 1) = 10 :=
begin

  -- The problem statement is about n + 1 = 10. Let's start by trying to prove that n + 1 = 10.
  -- The problem statement also mentions a product of three terms being equal to 720.
  -- We can start by using this information to try to find a value for n.
  -- We know that (n - 1) * n * (n + 1) = 720.
  -- Let's try to factor 720 to see if we can find a value for n.
  -- 720 = 2^4 * 3^2 * 5,
  -- so we know that n - 1, n, and n + 1 are all factors of 720.
  -- Since n - 1, n, and n + 1 are consecutive integers, we know that one of them must be a multiple of 3.
  -- Therefore, n + 1 must be a multiple of 3.
  -- Since 720 = 2^4 * 3^2 * 5, we know that n + 1 must also be a multiple of 5.
  -- Therefore, n + 1 must be a multiple of 3 * 5
end
