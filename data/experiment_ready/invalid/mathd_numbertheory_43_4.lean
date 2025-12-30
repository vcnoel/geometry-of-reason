import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  -- We start by showing that 233 is a factor of 942!
  have h1 : 233 ∣ 942! := by { apply nat.factorial_dvd_factorial, exact 233 },
  -- Next, we show that any number greater than 233 is not a factor of 942!
  have h2 : ∀ n, n > 233 → ¬(n ∣ 942!) := by { intros n h, apply nat.factorial_not_div_factorial, exact h },
  -- Now we combine these two results to show that 233 is the greatest number that is a factor of 942!
  show is_greatest {n : ℕ | 15^n ∣ 942! } 233,
  by { split,
       -- First, we show that 233 is a factor of 942!
       exact h1,
       -- Then, we show that any number greater than 233 is not a factor of 942!
       exact h2 },

end
