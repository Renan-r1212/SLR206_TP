for ALG in CoarseGrainedListBasedSet LazyLinkedListSortedSet HandsOverHandsSet
do
    for THREADS in 1 4 8 12
    do
        for UPDATE_RATIO in 0 10 100
        do
            for LIST_SIZE in 1000 
            do
            
                LIST_RANGE=$((LIST_SIZE * 2))
                java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > results_graphs_3/update_ration/$UPDATE_RATIO"_"$LIST_SIZE"_"$ALG"_"$THREADS"_"$LIST_RANGE.txt

            done
        done
    done
done

for ALG in HandsOverHandsSet
do
    for THREADS in 1 4 8 12
    do
        for UPDATE_RATIO in 10
        do
            for LIST_SIZE in 100 
            do
            
                LIST_RANGE=$((LIST_SIZE * 2))
                java -cp bin contention.benchmark.Test -b linkedlists.lockbased.$ALG -W 0 -d 2000 -t $THREADS -u $UPDATE_RATIO -i $LIST_SIZE -r $LIST_RANGE > results_graphs_3/ALG/$ALG"_"$THREADS"_"$UPDATE_RATIO"_"$LIST_SIZE"_"$LIST_RANGE.txt

            done
        done
    done
done
