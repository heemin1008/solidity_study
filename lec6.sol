// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <= 0.9.0;

contract lec6 {
    //function get_a() view external returns(uint256)

    /*
    1 ) view : function 밖의 변수들을 읽을 수 있으나 변경 불가능 
    2 ) pure : function 밖의 변수들을 읽지 못하고, 변경도 불가능 
    3 ) view와 pure 둘 다 명시 안할 때 : function 밖의 변수들을 읽어서 변경을 해야함 
    */

    // view
    uint256 public a = 1;

    function read_a() public view returns(uint256){
        return a+2; // function 밖의 변수 a를 읽고 a + 2 --> 3 리턴 
    }

    // pure
      function read_b() public pure returns(uint256){
        uint256 b = 1; //function 내에있는 변수 사용 --> pure
        return 4+2+b; 
    }

    // view와 pure 둘 다 명시 안할 때
    function read_a2() public returns(uint256)
    {
        a = 13;
        return a; 
    }
   
}