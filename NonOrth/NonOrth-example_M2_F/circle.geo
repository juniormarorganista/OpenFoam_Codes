lc = 1/100;

Point(1) = {0, 0, 0, lc} ;
Point(2) = {0.5, 0, 0, lc} ;
Point(3) = {0, 0.5, 0, lc} ;
Point(4) = {-0.5, 0, 0, lc} ;
Point(5) = {0,-0.5, 0, lc} ;

Circle(1) = {2,1,3} ;
Circle(2) = {3,1,4} ;
Circle(3) = {4,1,5} ;
Circle(4) = {5,1,2} ;

Line Loop(1) = {1,2,3,4} ;
Plane Surface(1) = {1};
Physical Volume("internal") = {1};

Recombine Surface{1};

//Extruda malla
Extrude {0, 0, 0.05} {Surface{1}; Layers{1}; Recombine; }

//crea patches
Physical Surface("Top") = {21};
Physical Surface("Right") = {17};
Physical Surface("Bottom") = {13};
Physical Surface("Left") = {25};
Physical Surface("TMP") = {26, 1};
