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
  let g : ℕ → ℕ := λ n, f (f n) - n - 1987,
  have hg : ∀ n, g (g n) = g n,
  { assume n,
    have g_g_n = f (f (f n)) - f n - 1987,
    have f_n = f (f n) - n - 1987,
    calc g_g_n = f (f (f n)) - n - 1987 - (f (f n) - n - 1987) : by ring
   ... = (f (f n) - n - 1987) - (f (f n) - n - 1987) : by rw [f_n]
   ... = 0 : by ring },
  have hng : ¬ g = 0,
  { assume h : g = 0,
    have hfg : ∀ n, f n = n + 1987,
    { assume n,
      have g_n = f (f n) - n - 1987 := g n,
      have f_f_n = f (f
end
