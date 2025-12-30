import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_303
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n]) :
  ∑ k in S, k = 111 :=
begin

  rw [finset.sum_eq_multiplicity, finset.sum_const],
  refine finset.sum_congr rfl (λ (x : ℕ) hx, _),
  have hx' : 2 ≤ x ∧ 171 ≡ 80 [MOD x] ∧ 468 ≡ 13 [MOD x],
  { rwa h₀ },
  have h₂ : 2 ∣ 171 - 80,
  { have h₁ : 2 ∣ 171, from two_dvd_171,
    have h₂ : 2 ∣ 80, from two_dvd_80,
    exact two_dvd_sub h₁ h₂ },
  have h₃ : 2 ∣ 468 - 13,
  { have h₁ : 2 ∣ 468, from two_dvd_468,
    have h₂ : 2 ∣ 13, from two_dvd_13,
    exact two_dvd_sub h₁ h₂ },
  have h₄ : 2 ∣ (171 - 80) + (468 - 13),
  { exact two_dvd_add h₂ h₃ },
  have h₅ : 2 ∣ 341,
  { rwa [h
end
