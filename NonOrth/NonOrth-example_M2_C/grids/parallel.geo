lc = 1/100;

Point(1) = {0, 0, 0, lc} ;
Point(2) = {1, 0, 0, lc} ;
Point(3) = {1.7, 1, 0, lc} ;
Point(4) = {0.7, 1, 0, lc} ;

Line(1) = {1,2} ;
Line(2) = {2,3} ;
Line(3) = {3,4} ;
Line(4) = {4,1} ;

Line Loop(1) = {1,2,3,4} ;
Plane Surface(1) = {1};
Physical Volume("internal") = {1};

Transfinite Line {1} = 101 Using Progression 1;
Transfinite Line {2} = 101 Using Progression 1;
Transfinite Line {3} = 101 Using Progression 1;
Transfinite Line {4} = 101 Using Progression 1;
Transfinite Surface{1};
Recombine Surface{1};

//Extruda malla
Extrude {0, 0, 0.05} {Surface{1}; Layers{1}; Recombine; }

//crea patches
Physical Surface("Top") = {21};
Physical Surface("Right") = {17};
Physical Surface("Bottom") = {13};
Physical Surface("Left") = {25};
Physical Surface("TMP") = {26, 1};
