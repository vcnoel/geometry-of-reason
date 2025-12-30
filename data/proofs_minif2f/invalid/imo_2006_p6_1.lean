import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  have h1 := by {
    calc
      (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2))
      ≤ (a * b * (a + b)) + (b * c * (b + c)) + (c * a * (c + a))
      := by {
        apply add_le_add_add;
        apply mul_le_mul;
        apply sub_nonneg;
        apply mul_nonneg;
        apply add_nonneg;
        apply mul_nonneg;
        apply add_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;
        apply mul_nonneg;
        apply sub_nonneg;

end
