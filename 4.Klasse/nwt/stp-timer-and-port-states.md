---
tags:
  - nwt
  - 3te_Klasse
---
#### STP convergence requires three times, as follows:
- **Hello Timer** The hello timer is the interval between [[bpdu-bridge-protocol-data-unit|BPDUs]] the default is 2 secounds but can be modified to between 1 and 10 secounds
- **Forward Delay Timer*** - The forward dealy is the time that is spend in the listening and learning state. The default is 15s but can be modified to between 4 and 30s.
- **Max Age timer** the max age is the mximum length of time that a swtich waits before attempting to change the STP topology. the default is 20 secounds but can be modified to between 6 and 40 secounds