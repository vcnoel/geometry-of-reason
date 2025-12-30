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

  by_cases h₂ : n % 4 = 0,
  { have h₃ : ∑ k in finset.Icc 1 n, (↑k * (complex.I^k)) = 48 + 49 * complex.I,
    { rw h₁ },
    have h₄ : n = 100,
    { have h₅ : ∑ k in finset.Icc 1 100, (↑k * (complex.I^k)) = 48 + 49 * complex.I,
      { rw h₃ },
      have h₆ : 100 % 4 = 0,
      { rw mod_eq_zero },
      have h₇ : ∑ k in finset.Icc 1 96, (↑k * (complex.I^k)) = 48 + 49 * complex.I,
      { have h₈ : ∀ (k : ℕ), 97 ≤ k → k % 4 = 0,
        { intros k h₉,
          have h₁₀ : k = 100,
          { have h₁₁ : 97 = 100 - 3,
            { rw sub_eq_add_neg },
            have h₁₂ : k = 100 -
end
