import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p4
  (f : ℕ → ℕ) :
  ∃ n, f (f n) ≠ n + 1987 :=
begin

  assume H : ∀ n, f (f n) = n + 1987,
  have H' : ∀ n, f n = n + 1987,
  {
    assume n,
    have h1 : f n = f (f n),
    {
      from rfl,
    },
    have h2 : f (f n) = n + 1987,
    {
      from H n,
    },
    have h3 : f n = n + 1987,
    {
      from eq.trans h1 h2,
    },
    from h3,
  },
  have H'' : ∃ n, f n = n + 1987,
  {
    from exists_const 0,
  },
  have H''' : ∃ n, f n = n + 1987 ∧ f (f n) = f (n + 1987),
  {
    from exists.intro 0 (H'' ∧ H 0),
  },
  have H'''' : f (f 0) = f (0 + 1987),
  {
    from eq.symm (H''' 0).2,
  },
  have H''''' : f (f 0) = 1987 +
end
