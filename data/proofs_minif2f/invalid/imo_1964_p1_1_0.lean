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

  have h₁ : n > 0 := by
    { rw [nat.pos_iff_ne_zero],
      intro h,
      rw [h] at h₀,
      exact nat.not_subtwo_pow_one h₀ },
  have h₂ : (2^n - 1) % 7 = 0 := by
    { rw [h₀],
      exact mod_self },
  have h₃ : (2^n - 1) % 3 = 0 := by
    { have h₄ : (2^n - 1) % 21 = 0 := by
        { have h₅ : 21 ∣ (2^n - 1) := by
            { exact div_of_mod_eq_zero h₂ },
          exact mod_eq_zero_of_div h₅ },
      have h₆ : (2^n - 1) % 3 = (2^n - 1) % 21 := by
        { rw [mod_eq_mod_of_dvd_left h₄],
          refl },
      exact mod_eq_zero_of_mod_eq_zero h₆ },
  have h₇ : 2^n % 3 = 1 := by
    { have h₈ : (2^n -
end
