function state = respectConstVel(state)

% global par
velocity = state(1:length(state)/2);
pContacts = getContactPosition(state);
jContacts = getContactJacobian(state);
vContacts = jContacts*velocity;

vError = zeros(length(pContacts),1);
for i = [3 6 9 12];
    if (pContacts(i) <= 0)
        vError(i) = min(vContacts(i),0);
%         vError(i-[1:2]) = vContacts(i-[1:2]);
    end
end

velError = pinv(jContacts)*vError;
state = state - [velError; zeros(size(velError))];

velocity = state(1:length(state)/2);
pContacts = getContactPosition(state);
jContacts = getContactJacobian(state);
vContacts = jContacts*velocity;

vError = zeros(length(pContacts),1);
for i = [3 6 9 12];
    if (pContacts(i) <= 0)
        vError(i) = min(vContacts(i),0);
%         vError(i-[1:2]) = vContacts(i-[1:2]);
    end
end

% display(vError);
end