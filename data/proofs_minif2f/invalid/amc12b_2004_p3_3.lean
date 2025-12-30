import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2004_p3
  (x y : ℕ)
  (h₀ : 2^x * 3^y = 1296) :
  x + y = 8 :=
begin

  -- First, note that 1296 is a power of 6
  have h₁ : 1296 = 6^4,
  { -- This is obvious from the fact that 6^4 = 1296
    apply pow_eq_of_eq_mul,
    { exact 1296 },
    { exact 6 },
    { exact 4 },
  },

  -- Now, we have 2^x * 3^y = 6^4
  have h₂ : 2^x * 3^y = (2*3)^4,
  { -- This is obvious from the fact that 2*3 = 6
    rw h₁,
    apply pow_eq_of_eq_mul,
    { exact 2*3 },
    { exact 4 },
  },

  -- Now, we have 2^x * 3^y = 2^4 * 3^4
  have h₃ : 2^x * 3^y = 2^4 * 3^4,
  { -- This is obvious from the fact that 2*3 = 6
    rw mul_comm at h₂,
    apply pow_eq_of_eq_mul,
    { exact
end
