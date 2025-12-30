import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  rw [nat.mod_eq_zero_or_pos] at h₀,
  cases h₀,
  { exact absurd h₀ rfl },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _ }) },
  { exact absurd h₀ (by { rintros rfl, exact nat.succ_pos _
end
