import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_2
  (n : ℕ) :
  ¬ 7 ∣ (2^n + 1) :=
begin

  intros h,
  have h1 : 7 ∣ (2^n + 1) - 2^n := by { rw [sub_self, zero_sub], exact h },
  have h2 : 7 ∣ (2^n - 1) := by { rw [sub_sub, sub_zero], exact h1 },
  have h3 : 7 ∣ (2^n - 1) * 2^n := by { exact mul_left_distrib h2 },
  have h4 : 7 ∣ 2^(n + 1) - 1 := by { rw [mul_sub, pow_add], exact h3 },
  have h5 : (2^(n + 1) - 1) < 2^(n + 1) := by { norm_num },
  have h6 : (2^(n + 1) - 1) ≠ 0 := by { norm_num },
  have h7 : ∃ k, 2^(n + 1) - 1 = 7 * k := by { rw [eq_zero_of_dvd h4], exact exists_of_ne h6 },
  obtain ⟨k, rfl⟩ := h7,
  have h8 : (2
end
