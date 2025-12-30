import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  have : ∀ n ≥ 15, n ∣ 942!, by { intros n hn,
    have : n.factorial ≥ 15.factorial, by { norm_num },
    exact factorial_dvd_factorial this },
  have : ∀ n ≥ 15, n.factorial ∣ 942!, by { intros n hn,
    exact this n hn },
  have : ∀ n ≥ 15, n.factorial ∣ 942.factorial, by { intros n hn,
    exact this n hn },
  have : ∀ n ≥ 15, n.factorial ∣ 942.factorial / 15.factorial, by { intros n hn,
    exact this n hn },
  have : ∀ n ≥ 15, n.factorial ∣ (942.factorial / 15.factorial) / (15.factorial / 15.factorial), by { intros n hn,
    exact this n hn },
  have : ∀ n ≥ 15, n.factorial ∣ (942.factorial / 15.factorial) / (15.factorial ^ 2 / 15.factorial), by { intros n hn,
    exact this n hn },
  have : ∀ n ≥ 15, n.factorial ∣ (942
end
