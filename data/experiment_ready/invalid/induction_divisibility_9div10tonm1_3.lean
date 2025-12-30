import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  induction n with n ih,
  { exact nat.zero_div (10^0 - 1) 9 },
  { exact (nat.divides.intro (10^n - 1)
        (calc
          (10^(n + 1) - 1)
          = (10 * 10^n - 1)
         ... = (10 * (10^n - 1) + 9)
         ... = 10 * (10^n - 1) + 9))
      }

end
