public class AddQuestionMark {
    public void addQuestionMarkSymbol(){
        String ques = 'Is Statement';
        String Value = 'What is your ? question';
        String symbol = Value.substring(Value.length()-1);
        system.debug(symbol);
        if(symbol == '?' || symbol == '.'){
            Value = Value.removeEndIgnoreCase(symbol);
            if(ques == 'Is Question'){
                value += ' ?' ;
            }
            else if(ques == 'Is Statement'){
                value += '.' ;
            }
            system.debug(Value);
        }
        else{
            if(ques == 'Is Question'){
                value += ' ?' ;
            }
            else if(ques == 'Is Statement'){
                value += '.' ;
            }
            system.debug(Value);
        }
    }
    
}