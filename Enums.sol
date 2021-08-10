pragma solidity ^0.5.11;
                                                                                          // in the future you can use other options such as PRO, CANCELED with enum
contract MyContract {
                    enum STATE {INACTIVE, ACTIVE}                                          // by convention, enum name should be all upper case. SIDE is namae of enum.  //option 1 by convention also all caps //option 2 by convention also all caps
                         STATE state;                                                      //need to declare a var with the type of enum. Using STATE type we just created and giving it a name 
                               struct User {                                                   //last bonus point is you can combine an enum with a struct
                                            STATE state;                                        //one of the fields can be state of the user 
                                             }                                               // when using new enums such as PRO we dont need to add new fields, we can just use State state
                                 
                               function setToActive() external {                          //external makes the func to be called internall and externally, even from inherited contracts. more flexibility
                                                                 state = STATE.ACTIVE ;     //we change the state.  //next we manipulate the enum. this func modifies the value of the enum
                                                                }                          //execution cost of this func is almost twice as high as the bar func
                         
                                function foo() external view {                            //view keyword meand no transactions cost expected to be applied
                                                          if (state == STATE.ACTIVE) {     //doing test base value of the enum. enums can be used with if statements, for example if this quals something, then do this  
                                                                  //do something
                                                         }     
                                                    }                                        
                                function bar(STATE _state) public {                                //accept an enum as an arg. First you declare its type STATE, then give it a name '_state'. notice how this one doesnt use an external keyword
                                                                                           //passing in an integer. Solidity knows how to convert an ineger into an enum. since its not possible to pass an enum from the outside we will pass in an interger.
                                                                                            // so if we pass 0 it will be converted it inactivce and pass in one will b converted to active. So its like Solifity intuitively knows how to covert int to enum switch. 
                                 }                                                         //execution cost is 23k in gas
                                                                    
                       }
 // so in this file we learned to set the enum, use the enum and declare it and use enum as arg
// think of enum as a switch
//enums are a way to represent different options just like in javascript