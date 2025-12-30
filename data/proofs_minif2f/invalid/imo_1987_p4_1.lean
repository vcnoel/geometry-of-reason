import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  assume f_nontriv : ∀ n, f n ≠ n + 1987,
  have f_surj : ∀ n, ∃ m, f m = n,
  
end
