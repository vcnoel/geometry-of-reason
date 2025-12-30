import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  -- The product of all numbers in the form (4k + 4)/(4k) from k = 1 to 501 is equal to 502
  have h1 : ∀ (k : ℕ), (4 * k + 4) / (4 * k) = 1 + 1 / k,
  { intros k,
    -- If we simplify (4k + 4)/(4k), we get 1 + 1/k
    field_simp,
    ring_simp },
  -- We can now rewrite the product as the product of 1 + 1/k
  have h2 : ∏ k in finset.Icc (1 : ℕ) 501, ((4 * k + 4) / (4 * k)) = ∏ k in finset.Icc (1 : ℕ) 501, (1 + 1 / k),
  { congr, ext k, apply h1 },
  -- The product of 1 + 1/k from k = 1 to 501 is equal to 502
  have h3 : ∏ k in finset.Icc (1 : ℕ) 501, (1 + 1 / k) = 502,
 
end
