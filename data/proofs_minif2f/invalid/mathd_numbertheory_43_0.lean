import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  have h1 : ∀ n : ℕ, 15^n ∣ 942! := by { intros n, apply nat.factorial_div, exact (15^ (n+1)) },
  have h2 : ∀ n : ℕ, 15^n ∣ 942! := by { intros n, apply nat.factorial_div, exact (15^ n) },
  have h3 : 942! = 942 * 941 *... * 1 := by { apply factorial_eq_mul_prod },
  have h4 : ∀ n : ℕ, 15^n ∣ 942! := by { intros n, apply nat.factorial_div, exact (15^ (n+1)) },
  have h5 : ∀ n : ℕ, 15^n ∣ 942! := by { intros n, apply nat.factorial_div, exact (15^ n) },
  have h6 : 942! = 942 * 941 *... * 1 := by { apply factorial_eq_mul_prod },
  have h7 : 15^2 ∣ 15^3 := by { apply nat.factorial_div, exact (15^ 3) },
  have h8 : 15^2 ∣ 15^
end
