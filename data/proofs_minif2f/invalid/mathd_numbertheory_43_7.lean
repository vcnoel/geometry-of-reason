import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  let f : ℕ → Prop := λ n, 15^n ∣ 942!,
  have hf : ∀ n, f (n+1) := λ n, by {
    have h1 : 15^(n+1) ∣ 942! * 15^n := by {
      have h2 : 15^(n+1) = 15^n * 15 := by {
        ring,
      },
      have h3 : 15^n ∣ 942! := by {
        apply nat.factorial_prime_power_div,
        use n,
      },
      have h4 : 15 ∣ 942! := by {
        apply nat.factorial_prime_power_div,
        use 1,
      },
      exact (h2 * (h3 * h4)).symm,
    },
    have h5 : 15^(n+1) ∣ 942! := by {
      apply nat.factorial_prime_power_div,
      use n + 1,
    },
    exact h5,
  },
  have hf1 : ∀ n, f n := by {
    induction n with n ih,
    { exact or.inl true },
    { exact or.inr (hf n (ih n))
end
