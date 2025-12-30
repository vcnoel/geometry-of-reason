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
  obtain ⟨k, hk⟩ := nat.exists_eq_add_one_of_dvd h,
  obtain ⟨m, hm⟩ := nat.exists_eq_add_one_of_dvd (2 ^ n + 1),
  obtain ⟨a, b, ha, hb⟩ := nat.exists_add_eq_of_eq_add_one hm,
  obtain ⟨c, d, hc, hd⟩ := nat.exists_add_eq_of_eq_add_one hk,
  have h1 : 2 ^ n + 1 = 8 ^ m + 1,
    by {rw [hm, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add_assoc, ← add
end
