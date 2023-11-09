//
// slide switch 0.2" spacing
//

$fn = 32;
function mm(x) = (x)*25.4;
thk = 1.6;

pin_len = 3.0;
wid = 9.9;
blen = 9.8;
thk = 6.18;


module pin_at(x,y) {
  translate( [x, y, -pin_len])
    color("gold")
    cylinder( h=pin_len, d=mm(0.03));
}

act_wid = 2.5;
act_len = 2.5;
act_hgt = 2.5;

module body() {
  pin_at( mm(-0.1), mm(-0.1));
  pin_at( mm(-0.1), mm(0.1));
  pin_at( mm(0.1), mm(-0.1));
  pin_at( mm(0.1), mm(0.1));
  translate( [-wid+mm(0.1), -blen/2, 0]) {
    color("grey") cube( [wid, blen, thk]);
    // actuator
    translate( [-act_wid, blen/2-act_len, thk/2-act_hgt/2])
      color("lightgrey")
      cube( [act_wid, act_len, act_hgt]);
  }

}

body();
