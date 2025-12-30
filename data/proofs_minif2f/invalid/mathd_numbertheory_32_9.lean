import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  rw finset.sum_eq_multiples,
  rw finset.sum_eq_multiples,
  { simp only [finset.sum_const, mul_one],
    rw finset.card_eq_sum_one,
    refine finset.sum_const (λ (n : ℕ), 1),
    { intros, exact h₀ n },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    { exact nat.prime 3 },
    { exact nat.prime 2 },
    {
end
