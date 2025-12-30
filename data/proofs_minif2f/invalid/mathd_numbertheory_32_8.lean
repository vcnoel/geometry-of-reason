import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  cases S with hS hS,
  { exact sum.empty (λ _, 0) },
  { let f := λ n, n ∣ 36,
    let g := λ n, n ∈ S,
    let S' := filter g (range (36 : ℕ)),
    let S'' := filter f S',
    let S''' := filter g S'',
    have h₁ : ∀ n ∈ S''', n ∈ S ∧ n ∣ 36, from λ n hn, ⟨g hn, f hn⟩,
    have h₂ : ∀ n ∈ S''', n ∣ 36 ∧ n ∈ S, from λ n hn, ⟨f hn, g hn⟩,
    have h₃ : ∀ n ∈ S''', n ∈ S, from λ n hn, h₂ n hn,
    have h₄ : ∀ n ∈ S''', n ∣ 36, from λ n hn, h₁ n hn,
    have h₅ : ∀ n ∈ S''', n ∣ 36, from h₄,
    have h₆ : S''' = S, from set.ext (λ n, n ∈ S''' ↔ n ∈ S),
    have h₇ :
end
