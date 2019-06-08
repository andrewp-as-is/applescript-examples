get volume settings
--> {output volume:13, input volume:100, alert volume:0, output muted:false}

#set volume output volume 10
#set volume input volume 100
#set volume alert volume 0
#set volume with output muted
#set volume with input muted
set volume without output muted

output volume of (get volume settings)
output muted of (get volume settings)
#alert muted of (get volume settings)
output volume of (get volume settings)