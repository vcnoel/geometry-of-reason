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

  apply finset.sum_congr rfl,
  intros n h₁,
  have h₂ : n ∈ S, from h₀ n h₁,
  have h₃ : 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n], from h₀ n h₁,
  have h₄ : n ≥ 3, from and.elim_right h₃,
  have h₅ : 171 ≡ 80 [MOD n], from and.elim_left h₃,
  have h₆ : 468 ≡ 13 [MOD n], from and.elim_right h₃,
  have h₇ : 171 = 80 + 91, from eq.symm (nat.add_sub_cancel 171 80),
  have h₈ : 171 = 80 + 91, from h₇,
  have h₉ : 91 = 91, from rfl,
  have h₁₀ : 91 ≡ 91 [MOD n], from h₅,
  have h₁₁ : 91 ≡ 91 [MOD n], from h₉,
  have h₁₂ : 91 ≡ 0 [MOD
end
