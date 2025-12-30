import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  -- 1. Find all numbers in the interval [100, 999] that are congruent to 7 modulo 19.
  have I : finset Icc 100 999 = finset.univ,
  { ext1,
    { intro x,
      rw finset.mem_univ,
      split,
      { exact finset.mem_Icc.mpr (and.intro (100 ≤ x) (x ≤ 999)) },
      { intro h,
        cases h with h1 h2,
        { exact finset.mem_Icc.mpr (and.intro (100 ≤ x) (x ≤ 999)) },
        { exact finset.mem_Icc.mpr (and.intro (100 ≤ x) (x ≤ 999)) } } },
  -- 2. Find all numbers in the interval [100, 999] that are congruent to 7 modulo 19.
  have II : finset.filter (λ x, x % 19 = 7) Icc 100 999 = finset.filter (λ x, x % 19 = 7) finset.univ,
  { rw I },
  -- 3. Find all numbers in the interval [100, 999] that are
end
