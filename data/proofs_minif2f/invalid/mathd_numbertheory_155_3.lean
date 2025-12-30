import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  let s := finset.Icc 100 999,
  let p := finset.filter (λ x, x % 19 = 7) s,
  have H1 : ∀ x ∈ s, x % 19 = 7 → 101 ≤ x ∧ x ≤ 997,
  { assume x hx,
    have h1 : 100 ≤ x ∧ x ≤ 999,
    { exact finset.mem_Icc.1 (finset.mem_filter.1 hx) },
    have h2 : x % 19 = 7,
    { exact finset.mem_filter.2 hx },
    have h3 : 101 ≤ x,
    { have h4 : x ≥ 100,
      { exact h1.left },
      have h5 : x % 19 ≥ 7,
      { exact h2 },
      have h6 : 100 ≥ 0,
      { trivial },
      have h7 : 0 < 19,
      { trivial },
      have h8 : 100 / 19 < 6,
      { have h9 : 100 < 6 * 19,
        { have h10 : 100 < 114,
          { trivial },
          have h11 : 114
end
