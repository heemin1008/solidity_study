// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <= 0.9.0;

contract lec7 {
    //function - string memory

    /*
    1) storage : 대부분의 변수, 함수 저장 , 영속적으로 저장되어 가스 비용이 비싸다.
    2) memory : 함소의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장된다.
    3) colldata : external function의 파라미터에서 사용된다.
    4) stack : EVM(Ethereum Virtual Machine)에서 Stack data를 관리할 때 쓰는 영역 , 1024mb 제한적
    */

    function get_string(string memory _str) public pure returns(string memory){
        return _str;
    }

    //get_string이라는 함수 정의 :: 문자열 타입(string memory) _str로 입력받기 , return값  문자열 형태(string memory)로 _str값
}