import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  -- The factorial function is a multiplicative function, so we can
  -- compute the product of the numbers 1 through 9 modulo 10.
  have : ∀ n, n! % 10 = (if n % 2 = 0 then 0 else 1) * (n-1)! % 10,
    from by {
      intro n,
      cases n,
      { simp },
      { have h := mod_lt _ (n - 1),
        have h' := mod_mul _ _ h,
        simp [h'] },
    },
  -- By the above result, we know that the product of the numbers 1
  -- through 9 modulo 10 is equal to the product of the numbers 2
  -- through 9 modulo 10.
  have := (prod_mod _ (λ i, (i - 1)! % 10)),

  -- Now, we can use the fact that the product of the numbers 2
  -- through 9 modulo 10 is equal to the product of the numbers 2
  -- through 8 modulo 10 multiplied by 9 modulo 10.
  have := (prod_mod _ (λ i, (i - 1
end
