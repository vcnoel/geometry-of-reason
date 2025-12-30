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

  induction n with n ihn,
  { exact absurd 0 < 0 (not_lt.mpr h₀) },
  { calc 9 ∣ (10 * 10^n - 1)
      = 9 ∣ (10 * (10^n - 1) + 9)
      = 9 ∣ (10 * (10^n - 1)) + 9
      = 9 ∣ (10 * (10^n - 1)) + 9
      = 9 ∣ (10 * (10^n - 1) + 9),
    using (add_right_cancel (show 9 ∣ 9, by exact dvd_rfl)),
    using (add_right_cancel (show 9 ∣ 9, by exact dvd_rfl)),
    using (add_right_cancel (show 9 ∣ 9, by exact dvd_rfl)),
    using (add_right_cancel (show 9 ∣ 9, by exact dvd_rfl)),
    using (add_right_cancel (show 9 ∣ 9, by exact dvd_rfl)),
    using (add_right_cancel (show 9 ∣ 9, by exact dvd_rfl)),
    using (add_right_cancel (show
end
