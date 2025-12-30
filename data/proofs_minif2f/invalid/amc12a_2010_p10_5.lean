import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p10
  (p q : ℝ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, a (n + 2) - a (n + 1) = a (n + 1) - a n)
  (h₁ : a 1 = p)
  (h₂ : a 2 = 9)
  (h₃ : a 3 = 3 * p - q)
  (h₄ : a 4 = 3 * p + q) :
  a 2010 = 8041 :=
begin

  let A = [a, p, q, 3*p - q, 3*p + q],
    B = [p, 9, 3*p, a, 8041],
    C = [p, a, 9, 3*p + q, 3*p - q],
    D = [p, a, 9, 3*p + q, 3*p - q],
    E = [p, 9, 3*p, a, 8041],
    F = [p, 9, 3*p, a, 8041],
    G = [p, a, 9, 3*p + q, 3*p - q],
    H = [p, a, 9, 3*p + q, 3*p - q],
    I = [p, 9, 3*p, a, 8041],
    J = [p, 9, 3*p, a, 8041],
    K = [p, 9, 3*p, a, 8041],
    L = [p, 9, 3*p, a, 8041]
  ];
  for n in ℕ |
end
