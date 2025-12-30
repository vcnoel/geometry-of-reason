import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  intro hf,
  have hf2 : ∀ n, f (f n) = n + 1987,
  { intro n,
    exact hf },
  have hfn : ∀ n, f n ∈ { 1987 },
  { intro n,
    exact (hf2 n).symm ▸ 1987 },
  have hfn2 : ∀ n, f n = 1987,
  { intro n,
    exact (hfn n).antisymm },
  have hfn3 : ∀ n, f n = 1987,
  { intro n,
    exact (hfn2 n) },
  have hf2' : ∀ n, f (f n) = n + 1987,
  { intro n,
    exact (hfn3 n).symm ▸ 1987 },
  have hf2'2 : ∀ n, f (f n) = n + 1987,
  { intro n,
    exact (hf2' n) },
  have hf2'3 : ∀ n, f (f n) = n + 1987,
  { intro n,
    exact (hf2'2 n) },
  have hf2'4 : ∀ n, f
end
