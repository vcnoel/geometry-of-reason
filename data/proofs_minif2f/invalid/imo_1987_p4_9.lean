import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  intro H,
  have H1 : ∀ n, f (f n) = n + 1987,
  { intro n,
    specialize H n,
    exact H },
  have H2 : ∀ n, f n = n + 1987,
  { intro n,
    specialize H1 n,
    exact H1 },
  have H3 : ∀ n, f n = n,
  { intro n,
    specialize H2 n,
    specialize H1 n,
    linarith },
  have H4 : ∀ n, f n = n + 1987,
  { intro n,
    specialize H3 n,
    specialize H2 n,
    linarith },
  have H5 : f 1988 = 1988 + 1987,
  { specialize H4 1988,
    linarith },
  have H6 : f 1988 = 3975,
  { specialize H5,
    linarith },
  have H7 : f 3975 = 3975 + 1987,
  { specialize H4 3975,
    linarith },
  have H8 : f 3975 = 5962,
  { specialize H7,
    linarith },
  have H
end
