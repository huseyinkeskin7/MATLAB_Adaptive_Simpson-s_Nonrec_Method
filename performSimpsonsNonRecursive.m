clc;
clear;


randa = 1 + (3-1) * rand(1);
randb = 7 + (9-7) * rand(1);

tol1 = 0.01;
tol2 = 0.009;
tol3 = 0.0005;

[estIntfirstadap, intervalsfirstadap] = adapSimpsons(@keskin19, randa, randb, tol1);
[estIntsecondadap, intervalssecondadap] = adapSimpsons(@keskin19, randa, randb, tol2);
[estIntthirdadap, intervalsthirdadap] = adapSimpsons(@keskin19, randa, randb, tol3);

[estIntfirstadapnonrec, intervalsfirstadapnonrec] = adapSimpsonsNonRecursive(@keskin19, randa, randb, tol1);
[estIntsecondadapnonrec, intervalssecondadapnonrec] = adapSimpsonsNonRecursive(@keskin19, randa, randb, tol2);
[estIntthirdadapnonrec, intervalsthirdadapnonrec] = adapSimpsonsNonRecursive(@keskin19, randa, randb, tol3);

subplot(3,1,1);
plot(intervalsfirstadap,intervalsfirstadapnonrec);
title('Graph of Intervalfirst Values');

subplot(3,1,2);
plot(intervalssecondadap,intervalssecondadapnonrec);
title('Graph of Intervalsecond Values');

subplot(3,1,3);
plot(intervalsthirdadap,intervalsthirdadapnonrec);
title('Graph of Intervalthird Values');
 
