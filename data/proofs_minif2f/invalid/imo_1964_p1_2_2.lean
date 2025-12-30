import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_2
  (n : ℕ) :
  ¬ 7 ∣ (2^n + 1) :=
begin

  intro h,
  cases n,
  { exact absurd 7 ∣ 3 (by norm_num), not_prime 7 },
  { rw nat.succ_eq_add_one,
    have h' : 7 ∣ (2^(n+1) - 1) := by
    { have h2 : 7 ∣ (2^(n+1) + 1) := by
      { exact h },
      have h3 : 2^(n+1) + 1 = 2 * 2^n + 1 := by ring,
      have h4 : 2^(n+1) - 1 = (2^(n+1) + 1) - 2 := by ring,
      exact (div_mul_right h2 2).trans h4 },
    have h6 : 2^(n+1) - 1 = 2 * (2^n - 1) := by ring,
    have h7 : 7 ∣ 2^(n+1) - 1 := by
    { exact h' },
    have h8 : 7 ∣ 2^(n+1) - 1 - (2^n - 1) := by

end
