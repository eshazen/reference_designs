//
// Sparkfun 4-digit 7 segment display COM-11441
//

$fn = 32;
function mm(x) = (x)*25.4;

wid = mm(1.6);
len = mm(1.0);
thk = 1.6;

dpy_wid = mm(1.6);
dpy_len = mm(0.55);
dpy_thk = 4.0;

hole_dia = mm(0.065);

module hole_at(x,y) {
  translate( [x, y, -1])
    cylinder( h=5, d=hole_dia);
}

module pin_at(x,y) {
  translate( [x, y, mm(-0.3)])
    color("gold")
    cylinder( h=mm(0.4)+thk, d=mm(0.03));
}

module board() {
  translate( [-wid/2, -len/2, thk])
    color("red")
    cube( [wid, len, thk]);
}

module dpy() {
  translate( [-dpy_wid/2, -dpy_len/2, thk])
    color("gray")
    cube( [dpy_wid, dpy_len, dpy_thk]);
}

module display() {
  difference() {
    board();
    hole_at( -wid/2+mm(0.2), -len/2+mm(0.1));
    hole_at( -wid/2+mm(0.2), len/2-mm(0.1));
    hole_at( wid/2-mm(0.2), -len/2+mm(0.1));
    hole_at( wid/2-mm(0.2), len/2-mm(0.1));
  }
  for( i=[0:1:9])
    {
      pin_at( -mm(0.45)+mm(0.1*i), len/2-mm(0.05));
    }

  dpy();
}

display();
