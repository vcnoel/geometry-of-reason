import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p15
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∑ k in finset.Icc 1 n, (↑k * (complex.I^k)) = 48 + 49 * complex.I) :
  n = 97 :=
begin

  induction n generalizing h₁,
  { exact false.elim (h₀ rfl) },
  { rw [finset.sum_Icc_succ, finset.sum_Icc_succ, finset.sum_Icc_succ, finset.sum_Icc_succ,
        finset.sum_Icc_succ, finset.sum_Icc_succ, finset.sum_Icc_succ, finset.sum_Icc_succ],
    simp only [complex.I_pow_succ, complex.I_mul_I],
    rw [add_comm, add_assoc, add_comm 48, add_assoc, add_comm 49, add_assoc, add_comm 48, add_assoc, add_comm 49],
    rw [add_assoc, add_comm 49, add_assoc, add_comm 48, add_assoc, add_comm 49, add_assoc, add_comm 48],
    have h₂ : 97 * (complex.I ^ 97) + 49 * (complex.I ^ 97) = 48 + 49 * complex.I,
    { have h₃ : 97 * complex.I = -1 + complex.I,
      { rw [nat.cast_zero, nat.cast_one, nat.cast_mul, complex.I_add_I, complex.I_neg],
        exact mod_two (97 : ℕ)
end
