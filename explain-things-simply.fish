#!/usr/bin/env fish

function create_section
  set lines (shuf -i 7-30 -n1)
    for j in (seq 1 $lines)
      shuf ./corpus/engines-simply-explained.txt -n 1
      echo ""

      set hundred_sided_die (random 1 100)
      if test $hundred_sided_die -lt 8 # 8% of time, display a diagram
	set DIAGRAM_NUM (shuf -i 001-999 -n 1) # pick rand num of diagram to display
	echo "![figure $DIAGRAM_NUM](processing/diagrams/diagram-$DIAGRAM_NUM.png)  "
	echo "*figure $DIAGRAM_NUM*"
	echo ""
        end
      end 

end

echo "# Simply Explained Technology"
set TECH (shuf ./corpus/new-technologies.txt -n 1)
echo "My object in placing this handbook before the reader is to provide them with a simple and straightforward explanation of how and why $TECH work. The main features and peculiarities in the construction of these $TECH are described, while the methods and precautions necessary to arrive at desirable results are detailed as fully as the limited space permits. I have aimed at supplying just that information which my experience shows is most needed by the user and by the amateur builder of small power $TECH. In place of giving a mere list of common $TECH troubles and their remedies, I have thought it better to endeavour to explain thoroughly the fundamental principles and essentials of good running, so that should any difficulty arise, the $TECH attendant will be able to reason out for themself the cause of the trouble, and will thus know the proper remedy to apply. This will give them a command over their $TECH which should render them equal to any emergency." 
echo ""
# rest of the technologies described

for i in (seq 1 105)
    echo ""
    set TECH (shuf ./corpus/new-technologies.txt -n 1)

    if test (string match '*s' $TECH) #if ends in 's'
      echo "## How $TECH work"
    else
      echo "## How $TECH works"
    end

    echo ""
    create_section
end
