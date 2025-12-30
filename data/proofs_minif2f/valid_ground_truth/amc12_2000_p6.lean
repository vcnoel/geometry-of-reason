import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p6
  (p q : ℕ)
  (h₀ : nat.prime p ∧ nat.prime q)
  (h₁ : 4 ≤ p ∧ p ≤ 18)
  (h₂ : 4 ≤ q ∧ q ≤ 18) :
  ↑p * ↑q - (↑p + ↑q) ≠ (194:ℤ) :=
begin
  revert p q h₀ h₁ h₂,
  intros p q hpq,
  rintros ⟨hp, hq⟩,
  rintro ⟨h, h⟩,
  intro h,
  have h₁ := nat.prime.ne_zero hpq.1,
  have h₂ : q ≠ 0,
  { rintro rfl, simp * at * },
  apply h₁,
  revert hpq,
  intro h,
  simp * at *,
  apply h₁,
  have h₃ : q = 10 * q,
  apply eq.symm,
  all_goals { dec_trivial! },
end