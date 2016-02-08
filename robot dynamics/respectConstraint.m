function state = respectConstraint(state)

% global par
pContacts = getContactPosition(state);
jContacts = getContactJacobian(state);

error = zeros(length(pContacts),1);
for i = [3 6 9 12];
    error(i) = min(pContacts(i),0);
end

while (max(abs(error)) > 0.01)
    posError = pinv(jContacts)*error;
    state = state - [zeros(length(posError),1); posError];
    
    pContacts = getContactPosition(state);
    jContacts = getContactJacobian(state);

    error = zeros(length(pContacts),1);
    for i = [3 6 9 12];
        error(i) = min(pContacts(i),0);
    end
end