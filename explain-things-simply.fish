#!/usr/bin/env fish

set modifiers "Carefully" "Aggressively" "Gently" "Quickly" "Forcefully" "With attention" "Firstly" "Gingerly" "Attentively" "Tentatively" "Crudely" "Swiftly" "Slickly" "Easily" "Eagerly" "Ordinarily" "Tenderly" "Cautiously" "Callously" "Quietly" "Crazily" "Practically" "Clearly" "Militantly" "Slickly" "Suavely" "Slightly" "Fluidly" "Easily" "Eagerly" "Bravely" "Boldly" "Delicately" "Devotedly" "Flagrantly" "Justly" "Knowingly" "Markedly" "Nicely" "Pleasantly" "Plainly" "Rightly" "Rigidly" "Urgently" "Willingly"
set actions "unseat" "depress" "extrude" "push" "extend" "remove" "lock" "twist" "unlock" "lower" "connect" "stretch" "unset" "hyper-extend" "pull" "place" "lift" "punch" "press" "turn" "force" "free" "fill" "empty" "shunt" "depress" "thrust" "thread" "heat" "pull down" "knock" "submerge" "strip"
set subjects "bearings" "shaft" "cam" "bit" "head" "chuck" "bearing" "belt" "bucket" "camshaft" "carriage" "chamber" "claw" "clockwork" "cog" "collar" "combustion chamber" "component" "compression chamber" "connector" "controller" "crank" "cutout" "dial" "drum" "dynamo" "feed" "feeder" "flywheel" "gasket" "gear" "guard" "guts" "heat pump" "housing" "hydraulics" "inlet" "innards" "instrumentation" "intake" "jacket" "jaws" "linkup" "lock" "machinery" "mechanism" "module" "motor" "moving part" "part" "pedal" "photoelectric cell" "pinion" "piston" "plunger" "radiator" "ratchet" "regulator" "remote" "remote control" "reservoir" "roller" "seal" "shaft" "shovel" "skirt" "skirting" "sleeve" "spare" "spindle" "spare part" "sprocket" "stabilizer" "starter" "starter motor" "sump" "supercharger" "timer" "tooth" "treadle" "tripwire" "unit" "valve" "vane" "wheel" "workings"

function create_section

  set mod (random 1 (count $modifiers))
  set act (random 1 (count $actions))
  set sub (random 1 (count $subjects))

  echo $modifiers[$mod] $actions[$act] $subjects[$sub].
  echo ""

  set lines (shuf -i 7-30 -n1)
    for j in (seq 1 $lines)
      
      shuf ./corpus/engines-simply-explained.txt -n 1
      echo ""

      set hundred_sided_die (random 1 100)
      if test $hundred_sided_die -lt 8 # 8% of time, display a diagram
	set DIAGRAM_NUM (shuf -i 100-999 -n 1) # pick rand num of diagram to display
	echo "![figure $DIAGRAM_NUM](processing/diagrams/diagram-$DIAGRAM_NUM.png)  "
	echo "*figure $DIAGRAM_NUM*"
	echo ""
        end
      end 

end

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
