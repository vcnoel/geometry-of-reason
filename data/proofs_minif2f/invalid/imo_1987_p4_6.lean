import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  assume f : ℕ → ℕ,
  assume h : ∀ n, f (f n) = n + 1987,
  assume H : ∀ n, n ≤ f n,
  show False,
  by_cases h1 : 1987 = 0,
  { exact False.elim (eq.refl 1987).ne (eq.refl 0).ne },
  { have h2 : ∀ n, f (f n) ≥ n + 1987 - 1,
    by { assume n, apply H, apply h, apply le_of_eq },
    have h3 : ∀ n, n + 1987 - 1 ≤ f n,
    by { assume n, apply le_of_eq, apply h, apply n },
    have h4 : ∀ n, n ≤ f (f n) - 1987 + 1,
    by { assume n, apply h2, apply n },
    have h5 : ∀ n, n ≤ f n,
    by { assume n, apply h4, apply h, apply n },
    have h6 : ∀ n, n = f n,
    by { assume n, apply eq.trans h5, apply h3 },
    have h7
end
