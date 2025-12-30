import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p21
  (u : ℕ → ℕ)
  (h₀ : u 0 = 4)
  (h₁ : u 1 = 7)
  (h₂ : ∀ n ≥ 2, u (n + 2) = (u n + u (n + 1)) % 10) :
  ∀ n, ∑ k in finset.range(n), u k > 10000 → 1999 ≤ n :=
begin

  -- Define the function f(n) = u(n) - u(n-1) for n ≥ 2
  let f : ℕ → ℤ := λ n, if n = 0 then 4
    else if n = 1 then 3
    else u (n - 1) - u (n - 2),

  -- Define the function g(n) = f(n) % 10
  let g : ℕ → ℕ := λ n, f n % 10,

  -- Define the function h(n) = f(n) % 10 + f(n+1) % 10
  let h : ℕ → ℕ := λ n, g n + g (n + 1),

  -- Compute f(n) for n ≥ 2
  have hf₂ : ∀ n ≥ 2, f (n + 2) = (f n + f (n + 1)) % 10,
  { intro n,
    rw [f, f, f, f],
    cases n,
    { exact (h₂ n).trans ((add_mod _ _ _).trans (add_mod _ _ _)) },
    { exact (h₂ n).trans ((add_mod _
end
