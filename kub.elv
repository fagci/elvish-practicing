use str
use math

seq 102 987 | each { |n|
    var k u b = (str:split '' $n)
    var kub = (math:pow (+ $k $u $b) 3)
    if (and (!= $k $u $b) (== $kub $n)) {
        printf "(%d+%d+%d)^3=%d" $k $u $b $n
    }
}
