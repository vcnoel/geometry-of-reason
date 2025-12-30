import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  assume hf : ∀ n, f (f n) = n + 1987,
  have h : ∀ n, f n = n + 1987 - f (n + 1987) by { rw hf, refl },
  have hf0 : f 0 = 1987 by { rw h, refl },
  have hf1 : f 1 = 1988 by { rw h, refl },
  have hf2 : f 2 = 1989 by { rw h, refl },
  have hf3 : f 3 = 1990 by { rw h, refl },
  have hf4 : f 4 = 1991 by { rw h, refl },
  have hf5 : f 5 = 1992 by { rw h, refl },
  have hf6 : f 6 = 1993 by { rw h, refl },
  have hf7 : f 7 = 1994 by { rw h, refl },
  have hf8 : f 8 = 1995 by { rw h, refl },
  have hf9 : f 9 = 1996 by { rw h, refl },
  have hf10 : f 10 = 1997 by { rw h
end
