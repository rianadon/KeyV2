module choc_row(row=0, column = 0) {
  $key_shape_type = "sculpted_square";
  $bottom_key_width = 17.45;
  $bottom_key_height = 16.45;
  $width_difference = 0;
  $height_difference = 0;
  $top_tilt = 0;
  $top_skew = 0;
  $dish_type = "spherical";
  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $height_slices = 10;
  $enable_side_sculpting = true;
  $corner_radius = 1.75;

  flat_height = 1.78;
  flat_percent = 1.78/5;
  $side_sculpting = function(progress) progress < flat_percent ? 0 : -3 * (progress-flat_percent)/(1-flat_percent);
  $corner_sculpting = function(progress) progress < flat_percent ? 0 : -0.7 * (progress-flat_percent)/(1-flat_percent);

  $top_tilt_y = side_tilt(column);
  extra_height = $double_sculpted ? extra_side_tilt_height(column) : 0;

  $total_depth = 5 + extra_height;
  $dish_depth = 2.13;
  children();
}
