   {del} Z{<-}ACMBALLS N;H;M;Q;R
[1]    @Brute-force solution for the ACM Ball Clock Contest
[2]    @ N is the number of balls in the clock
[3]    @ Z is the number of days before the balls return to the original order
[4]    @
[5]    Q{<-}R{<-}{iota}N    @ the ball queue, and a reference copy
[6]    Z{<-}0               @ day counter
[7]    M{<-}H{<-}{iota}0    @ 5-minute and hour tracks
[8]   L1:                   @ Loop for each five-minute period
[9]    M{<-}M,Q[5]          @   add 5th ball to the 5-minute track
[10]   Q{<-}(5{drop}Q),{reverse}4{take}Q @   requeue the other 1-minute balls
[11]   {->}(12>{rho}M)/L1   @   If 12 balls in the 5-min track,
[12]   H{<-}H,{neg}1{take}M @     move the last ball onto the hour track
[13]   Q{<-}Q,{reverse}{neg}1{drop}M @     requeue the other 5-min balls
[14]   M{<-}{iota}0         @     empty the 5-min track
[15]   {->}(12>{rho}H)/L1   @     If 11 moveable balls in the hour track,
[16]   Q{<-}Q,1{rotate}{reverse}H @       requeue the hour balls
[17]   H{<-}{iota}0         @       empty the hour track
[18]   Z{<-}Z+.5            @       another half-day has passed
[19]   {->}(Q{match}R)/0    @       quit if balls are in original order
[20]   {->}L1               @ Endloop
     {del}

[17]
[18]   @ Phase 2: Apply the 12-hour permutation repeatedly until the
[19]   @   balls return to their original order.
[20]   Z{<-}.5             @ day counter
[21]   P{<-}Q              @ 12-hour permutation
[22]  L2:{->}(Q{match}R)/0 @ Loop until balls are in order
[23]   Q{<-}Q[P]           @   give 'em a days worth of shuffling
[24]   Z{<-}Z+.5           @   bump the day counter
[25]   {->}L2              @ Endloop