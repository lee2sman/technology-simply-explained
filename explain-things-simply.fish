#!/usr/bin/env fish

set TECH (shuf ./corpus/new-technologies.txt -n 1)

echo "My object in placing this handbook before the reader is to provide them with a simple and straightforward explanation of how and why $TECH work. The main features and peculiarities in the construction of these $TECH are described, while the methods and precautions necessary to arrive at desirable results are detailed as fully as the limited space permits. I have aimed at supplying just that information which my experience shows is most needed by the user and by the amateur builder of small power $TECH. In place of giving a mere list of common $TECH troubles and their remedies, I have thought it better to endeavour to explain thoroughly the fundamental principles and essentials of good running, so that should any difficulty arise, the $TECH attendant will be able to reason out for themself the cause of the trouble, and will thus know the proper remedy to apply. This will give them a command over their $TECH which should render them equal to any emergency." 

    echo ""

    set lines (shuf -i 7-30 -n1)

    shuf ./corpus/engines-simply-explained.txt -n $lines

for i in (seq 1 85)

    echo ""

    set TECH (shuf ./corpus/new-technologies.txt -n 1)

    echo "How a $TECH works"

    echo ""

    set lines (shuf -i 7-30 -n1)

    shuf ./corpus/engines-simply-explained.txt -n $lines

end
