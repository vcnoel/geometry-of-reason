import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_149 :
  ∑ k in (finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50)), k = 66 :=
begin

  let S := finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50),
  have H : ∀ x ∈ S, x % 8 = 5 ∧ x % 6 = 3 := by simp only [finset.mem_filter, finset.mem_range],
  have H' : ∀ x ∈ S, x = 5 + 8 * (x - 5)/8 := by
  { intro x,
    have H'' : x - 5 = 8 * ((x - 5)/8) := by { have H''' : x - 5 = 8 * ((x - 5)/8) * (8/8) := by { ring }, assumption },
    have H'''' : (x - 5)/8 = (x - 5)/8 := by { ring },
    have H''''' : x = 5 + 8 * ((x - 5)/8) := by { ring },
    assumption },
  have H'''' : ∀ x ∈ S, x = 5 + 8 * (x - 5)/8 := by { intro x, assumption },
  have H'''''
end
