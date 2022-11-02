rng('shuffle');
operators=randperm(4);
operatorsarray=repmat(operators,5,1);
operator_rng=reshape(operatorsarray,1,[]);
rng('shuffle');
digitsonerng=randperm(9);
digitsonerng=repmat(digitsonerng,3,1);
rng('shuffle');
digitstworng=randperm(9);
digitstworng=repmat(digitstworng,3,1);
digitsonerecord=[];
digitstworecord=[];
operatorsrecord=[];
correctanswermatrix=[];
b=randperm(20);
for a=1:20
    correctanswer=[];
    dividendmat=[];
    if operator_rng(b(a))==1
        correctanswer=digitsonerng(b(a))+digitstworng(b(a));
        correctanswermatrix(a)=correctanswer;
        digitsonerecord(a)=digitsonerng(b(a));
        digitstworecord(a)=digitstworng(b(a));
        operatorsrecord(a)=operator_rng(b(a));
    elseif operator_rng(b(a))==2
        correctanswer=digitsonerng(b(a))-digitstworng(b(a));
        correctanswermatrix(a)=correctanswer;
        digitsonerecord(a)=digitsonerng(b(a));
        digitstworecord(a)=digitstworng(b(a));
        operatorsrecord(a)=operator_rng(b(a));
    elseif operator_rng(b(a))==3
        correctanswer=digitsonerng(b(a))*digitstworng(b(a));
        correctanswermatrix(a)=correctanswer;
        digitsonerecord(a)=digitsonerng(b(a));
        digitstworecord(a)=digitstworng(b(a));
        operatorsrecord(a)=operator_rng(b(a));
    else
        dividendmat=digitsonerng(b(a))*digitstworng(b(a));
        correctanswer=dividendmat(1)/digitsonerng(b(a));
        correctanswermatrix(a)=correctanswer;
        digitsonerecord(a)=dividendmat(1);
        digitstworecord(a)=digitsonerng(b(a));
        operatorsrecord(a)=operator_rng(b(a));
    end
end
correctanswermatrix
digitsonerecord
digitstworecord
operatorsrecord



