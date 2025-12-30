import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_odd
  (n : ℕ) :
  ∑ k in (finset.range n), 2 * k + 1 = n^2 :=
begin

  induction n generalizing n,
  case nat.zero =>
    simp only [finset.range_zero, finset.sum_empty, nat.zero_pow, add_zero, pow_zero],
  case nat.succ n =>
    let m := n,
    have m_ne_zero := nat.succ_ne_zero n,
    have m_nonneg := nat.zero_le n,
    have h := induction_sum_odd n,
    have h2 : (finset.range (n + 1)) = (finset.insert n (finset.range n)) := by
      { ext k,
        cases k,
        case finset.ofNat =>
          { simp only [finset.insert_ofNat, finset.range_succ, finset.insert_ofNat],
            refl },
        case finset.succ k =>
          { simp only [finset.insert_succ, finset.range_succ, finset.insert_ofNat],
            refl } },
    have h3 : ∑ k in (finset.range (n + 1)), 2 * k + 1 = ∑ k in (finset.insert n (finset.range n)), 2 * k + 1 := by
      { apply finset.sum_insert,
        { assumption },
        { assumption } },
   
end
