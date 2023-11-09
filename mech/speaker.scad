//
// speaker SM231508-1
//
$fn = 32;
function mm(x) = (x)*25.4;
thk = 1.6;

module pin_at(x,y) {
  translate( [x, y, mm(-0.3)])
    color("gold")
    cylinder( h=mm(0.4)+thk, d=mm(0.03));
}

module speaker() {
  color("gray")
    cylinder( h=8.7, d=22.8);
  pin_at( -5, 0);
  pin_at( 5, 0);
}

speaker();
