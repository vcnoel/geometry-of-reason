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

  let s = a 2010 - 1,
  let t = a 2011 - 1,
  let u = a 2012 - 1,
  let v = a 2013 - 1,
  let w = a 2014 - 1,
  let x = a 2015 - 1,
  let y = a 2016 - 1,
  let z = a 2017 - 1,
  let t' = a 2018 - 1,
  let u' = a 2019 - 1,
  let v' = a 2020 - 1,
  let w' = a 2021 - 1,
  let x' = a 2022 - 1,
  let y' = a 2023 - 1,
  let z' = a 2024 - 1,
  let t'' = a 2025 - 1,
  let u'' = a 2026 - 1,
  let v'' = a 2027 - 1,
  let w'' = a 2028 - 1,
  let x'' = a 2029 - 1,
  let y''
end
