import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  have f_nonzero : ∀ n, f n ≠ 0,
  { assume n,
    assume f_nonzero_n : f n = 0,
    have f_nonzero_1 : f (f n) ≠ 0,
    { assume f_nonzero_1 : f (f n) = 0,
      have f_nonzero_2 : f n = 0,
      { apply f_nonzero_n,
        apply f_nonzero_1 },
      have f_nonzero_3 : f n ≠ 0,
      { assumption },
      contradiction },
    have f_nonzero_n : f n ≠ 0,
    { assumption },
    contradiction },
  have f_inj : ∀ n m, f n = f m → n = m,
  { assume n m,
    assume f_inj_nm : f n = f m,
    have f_inj_nfm : f (f n) = f (f m),
    { apply f_inj_nm },
    have f_inj_nfnnf : f n = f m,
    { apply f_inj_nfm },
    have f_inj_n : f n ≠ f m → n ≠ m,
    { assume f_inj_n : f n
end
