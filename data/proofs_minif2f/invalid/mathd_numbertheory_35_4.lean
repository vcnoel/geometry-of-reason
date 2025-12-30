import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_35
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∣ (nat.sqrt 196)) :
  ∑ k in S, k = 24 :=
begin

  apply finset.sum_congr rfl,
  intros n h₁,
  exact h₀ n,

end
