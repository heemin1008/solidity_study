// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <= 0.9.0;

contract lec4 {


    /*
    solidity 함수 정의하는 방법
    function 함수의이름() public { 내용 }

    - public ,private,internal,external 변경가능 ==> 접근제어자 

     */


    // 1 ) Parameter 과 Return 값이 없는 Function 정의
    uint public a = 3;
    function changeA1() public {  //함수 changeA1은 a값을 5로 바꿔주는 함수이다. 
        a = 5;
    }

    // 2 ) Parameter는 있고 Return 값이 없는 Function 정의
    // parameter 정의하기 [type 변수명] == 값을 입력하는 경우  
    function changeA2(uint256 _value) public { //함수 changeA2는 parameter _value값을 변수 a에 대입한다. 
        a = _value;
    }

    // 3 ) Parameter도 있고, Return 값이 있는 Function 정의 
    // return 값 명시하기  함수 정의 뒤 returns(어떤 값을 return할 건지 그 자료형)

    function changeA3(uint256 _value) public returns(uint256) {
        a = _value;
        return a; //return 리턴할 값 
    }



}