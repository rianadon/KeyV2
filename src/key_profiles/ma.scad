use <../functions.scad>
include <../settings.scad>

module ma_row(row=0, column = 0) {
  $key_shape_type = "sculpted_square";
  $bottom_key_width = 18.15;
  $bottom_key_height = 18.15;
  $width_difference = 3.5;
  $height_difference = 3.5;
  $top_tilt = 0;
  $top_skew = 0;
  $dish_type = "spherical";
  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $height_slices = 10;
  $enable_side_sculpting = true;
  $corner_radius = 0.6;

  $side_sculpting = function(progress) (1 - progress) * 2;
  $corner_sculpting = function(progress) pow(progress, 2) * 5.2;

  $top_tilt_y = side_tilt(column);
  extra_height = $double_sculpted ? extra_side_tilt_height(column) : 0;

  $total_depth = 12.35 + extra_height;
  $dish_depth = 0.85;
  children();
}
