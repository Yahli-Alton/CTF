N, e = (20170889917181932372368918511562570564624023399238665403557972185421770230553168521820146189261673552805034178373966330336342652213918085539842531813100003598733589607628610720384412442689793017229890205398332880729141969518038137123735590263024649953916673156068987476490460881680455873501580401318121540874078231293348650626915120595430117129129333719734967211651576249801748701043983054138568730841991650349297121051718685681706345374607992258725406146301822593331326855384756245361804029185792283059895447848539331731763228191686877487323533454354117772833855525477417679451098054638318784297909960775619434098969, 65537)

d = pow(e, -1, N - 1)

# 2 ^ 4 ^ 6 == 0
cts = [2, 4, 6]

ms = [pow(ct, d, N) for ct in cts]

assert all(pow(m, e, N) == ct for m, ct in zip(ms, cts))

print((b"".join(m.to_bytes(256, "big") for m in ms)).hex())