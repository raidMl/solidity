// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Main{
string public hello="hello solidity developer ";
//  string  hi="hello word";// it is privite (hidden)

uint public myage=21;
// function getMyAge() public{
//     myage=100;
// }

//++++++++ i'll use input paramater ++++++++++

function getMyAge(uint _newAge) public{ // _ for private
    myage=_newAge;
}

// using conditions ++++++++++
string public state;
function checkAge() public{
    if(myage>=18)
    state="You are adult";
}
// arrays =======
// string[4] public web3=["nft","etherium","blockchaine","dapps"]; //static
 string[] public web3=["nft","etherium","blockchaine","dapps"]; //dynamic
function getLength() public view returns(uint){
    return  web3.length;
}

// even numbers -------------------
uint[] public nbr=[0,1,2,3,4,5,6,7,8,9];
function isEven(uint _n) private pure  returns(bool){ //because i called in the same classe
if(_n%2==0) return true;
else return false;}

function countNumber() public  view returns(uint){
    uint count=0;
    for(uint i=0;i<nbr.length;i++){
        if(isEven(nbr[i]))
        count++;
       
    }
     return count;
}
// --- using pointer --------------
string name="devloper";
function getName() public view returns(string memory){
    return name;
}
//struct ----------------------

struct Person{
    uint id;
    string name;
    bool alive;

}
Person public p1=Person(1234,"raid",true);
Person public p2=Person(191943,"salim",false);
Person public p3=Person({id:191943,name:"salim",alive:false});

function updata() external{ //external like private
    p2.id=22;
    Person memory p4=Person(19,"setif",true);
    p4.name="ess";
}
mapping(uint=>string) public names; //key=>value
// function addNames() public{
//     names[10]="solidity";
//     names[1]="C#";
//     names[3]="javascript";
// }
constructor(){ //using constractor
    names[10]="solidity";
    names[1]="C#";
    names[3]="javascript";}
}

 
