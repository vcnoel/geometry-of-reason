import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  assume f,
  have f_nonzero : ∀ n, f n ≠ 0,
  
end
