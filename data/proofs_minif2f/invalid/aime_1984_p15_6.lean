import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p15
  (x y z w : ℝ)
  (h₀ : (x^2 / (2^2 - 1)) + (y^2 / (2^2 - 3^2)) + (z^2 / (2^2 - 5^2)) + (w^2 / (2^2 - 7^2)) = 1)
  (h₁ : (x^2 / (4^2 - 1)) + (y^2 / (4^2 - 3^2)) + (z^2 / (4^2 - 5^2)) + (w^2 / (4^2 - 7^2)) = 1)
  (h₂ : (x^2 / (6^2 - 1)) + (y^2 / (6^2 - 3^2)) + (z^2 / (6^2 - 5^2)) + (w^2 / (6^2 - 7^2)) = 1)
  (h₃ : (x^2 / (8^2 - 1)) + (y^2 / (8^2 - 3^2)) + (z^2 / (8^2 - 5^2)) + (w^2 / (8^2 - 7^2)) = 1) :
  x^2 + y^2 + z^2 + w^2 = 36 :=
begin

  have h₀' := congr_arg2 add h₀ h₁,
  have h₁' := congr_arg2 add h₀' h₂,
  have h₂' := congr_arg2 add h₁' h₃,
  have h₃' := congr_arg2 add h₂' (by { rw [add_zero, add_zero, add_zero, add_zero], refl }),
  rw [←add_assoc, ←add_assoc, ←add_assoc, ←add_assoc] at h₃',
  congr_arg2 add (congr_arg2 add (congr_arg2 add (congr_arg2 add h₃' (by { rw [add_zero, add_zero, add_zero, add_zero], refl })) (by { rw [add_zero, add_zero, add_zero, add_zero], refl })) (by { rw [add_zero, add_zero, add_zero, add_zero], refl })) (by { rw [add_zero, add_zero, add_zero, add_zero], refl }),
  ring_nf at h₃',
  have h₄ := (by { rw [←add_assoc, ←add_assoc, ←add_assoc, ←add_assoc], ring_nf, congr, ring_nf, ring_nf, ring_nf, ring_nf, ring
end
