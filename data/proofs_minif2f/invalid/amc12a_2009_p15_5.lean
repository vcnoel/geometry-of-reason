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

  induction n with n IH,
  { exfalso, exact h₀ },
  { refine finset.sum_eq_single n (λ k hk, _),
    { refine (λ h, _),
      { rw finset.sum_eq_single_of_mem hk,
        { rw h₁,
          { refine (congr_arg2 (λ a b, a + b) _ _),
            { congr,
              { rw complex.I_pow_succ',
                { congr },
                { ring } },
              { rw complex.I_pow_succ',
                { congr },
                { ring } },
              { rw complex.I_pow_succ',
                { congr },
                { ring } } } },
        { refine finset.sum_congr rfl (λ k hk, _),
          { cases k,
            { exfalso, exact h₀ },
            { refine congr_arg2 (λ a b, a + b) _ _,
              { congr,
                { rw complex.I_pow_succ',
                  { congr },
                  { ring } },
                { rw complex.I_pow_succ',
                  { congr },
                  { ring } },
                { rw complex.I_pow_succ',
                  { congr },
                  { ring } } } } } } },
    { exact IH (n - 1)
end
