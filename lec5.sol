// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <= 0.9.0;

contract lec5 {
    //접근제한자 4가지

    /*
    1) public
        모든 곳에서 접근 가능 

    2) external
        public처럼 모든 곳에서 접근이 가능하나, external이 정의된 자기자신 컨트랙 내에서는 접근 불가

    3) private
        오직 private이 정의된 자기 컨트랙 내에서만 가능, 상속 받은 컨트랙트는 접근 불가능 

    4) internal 
        private처럼 오직 internal이 정의된 자기 자신 컨트랙트에서만 접근 가능하고, 상속 받은 컨트랙트 접근 가능 
    */



    // 1 ) 접근제한자 public
    uint256 public a = 5;

    // 2 ) 접근제한자 private --> deploy하면 안 보임
    uint256 private b = 19;

}

contract Public_example { //Public_example이라는 컨트랙트 생성 
    uint256 public a = 3; //변수 a에 3 대입

     function changeA(uint256 _value) public { //changeA 함수는 public이고 uint256형 값을 받고 그 값을 a에 대입한다. 
         a = _value;
     }


    //view와 pure 
     function get_a() view public returns (uint256) { //get_a 함수는 view public이고 uint256형 값(a)을 리턴한다. 
         return a;
     }
}

contract Public_example_2 { //Public_example_2이라는 컨트랙트 생성 
 
    //instance화 
    Public_example instance = new Public_example(); 

    function changeA_2(uint256 _value) public {
        instance.changeA(_value);
    }

    function use_public_example_a () view public returns (uint256) {
        return instance.get_a();
      
    }
}