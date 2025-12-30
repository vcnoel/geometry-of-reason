import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_prmdvsneqnsqmodpeq0
  (n : ℤ)
  (p : ℕ)
  (h₀ : nat.prime p) :
  ↑p ∣ n ↔ (n^2) % p = 0 :=
begin

  split,
  { intro h,
    cases h with h₁ h₁,
    { exact absurd h₁ (h₀.multiplicity_le_one 1), },
    { exact absurd h₁ (h₀.multiplicity_le_one 2), },
  },
  { intro h,
    exact (nat.prime.pow_divides p h).ne,
  },

end
