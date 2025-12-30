import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  assume h,
  assume h1 : ∀ n, f (f n) = n + 1987,
  have h2 : ∀ n, f n = f (f (n - 1987)),
  { intro n,
    by_cases h3 : n - 1987 ≥ 0,
    { cases h3,
      { apply h1,
        simp [h3] },
      { apply h2,
        simp [h3] } },
    { apply h2,
      simp } },
  have h4 : ∀ n, f n = n,
  { intro n,
    have h5 : f n = f (f (n - 1987)),
    { apply h2 },
    have h6 : f (n - 1987) = n - 1987,
    { apply h4 },
    have h7 : f (f (n - 1987)) = (f (n - 1987)) + 1987,
    { apply h1 },
    have h8 : f n = (n - 1987) + 1987,
    { apply h5, apply h6, apply h7 },
    simp [h8] },
  have h
end
