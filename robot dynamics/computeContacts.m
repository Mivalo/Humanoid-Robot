function f = computeContacts(state)

global par

velocity = state(1:length(state)/2);
pContacts = getContactPosition(state);
vContacts = getContactJacobian(state)*velocity;

hLft.i = 1:3;
hRght.i = 7:9;
tLft.i = 4:6;
tRght.i = 10:12;

hLft.p = pContacts(hLft.i);
hRght.p = pContacts(hRght.i);
tLft.p = pContacts(tLft.i);
tRght.p = pContacts(tRght.i);

hLft.v = vContacts(hLft.i);
hRght.v = vContacts(hRght.i);
tLft.v = vContacts(tLft.i);
tRght.v = vContacts(tRght.i);

hLft.f = computeContactForce(hLft.p,hLft.v);
hRght.f = computeContactForce(hRght.p,hRght.v);
tLft.f = computeContactForce(tLft.p,tLft.v);
tRght.f = computeContactForce(tRght.p,tRght.v);

Lft.tau = cross(par.com(:,4),hLft.f) + cross(par.com(:,4)-par.joint(:,4),tLft.f);
Rght.tau = cross(par.com(:,7),hRght.f) + cross(par.com(:,7)-par.joint(:,7),tRght.f);
Lft.F = hLft.f + tLft.f;
Rght.F = hRght.f + tRght.f;

f = zeros(length(par.fz),1);
f(19:24) = [Lft.F; 0*Lft.tau];
f(37:42) = [Rght.F; 0*Rght.tau];

