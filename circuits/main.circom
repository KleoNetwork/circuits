pragma circom 2.0.0; 


include "../node_modules/circomlib/circuits/comparators.circom";

template foundInHistory() {
    // public
    signal input keyword; 
    
    // private
    signal input history;


    // true/false
    signal output out;

    // considering max age 127
    component historyEqualsKeyword = IsEqual();
    historyEqualsKeyword.in[0] <== keyword;
    historyEqualsKeyword.in[1] <== history;


    out <-- historyEqualsKeyword.out;
    out === 1;
}

component main {public [keyword]} = foundInHistory();