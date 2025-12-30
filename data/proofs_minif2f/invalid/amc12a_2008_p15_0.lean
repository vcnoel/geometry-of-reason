import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p15
  (k : ℕ)
  (h₀ : k = 2008^2 + 2^2008) :
  (k^2 + 2^k) % 10 = 6 :=
begin

  cases k with k hk,
  { subst hk,
    rw [← pow2_2008, pow2_add],
    simp [mod_add_left_eq, mod_eq_zero, mod_eq_zero] },
  { intro h,
    simp only [hk] at h,
    simp only [hk] at h₀,
    have h₀' := h₀,
    have h₁ := h₀',
    have h₂ := h₀',
    exact h₁ },

end
