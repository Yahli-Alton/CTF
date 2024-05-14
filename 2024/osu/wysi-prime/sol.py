from itertools import product
from Crypto.Util.number import long_to_bytes


n = 2160489795493918825870689458820648828073650907916827108594219132976202835249425984494778310568338106260399032800745421512005980632641226298431130513637640125399673697368934008374907832728004469350033174207285393191694692228748281256956917290437627249889472471749973975591415828107248775449619403563269856991145789325659736854030396401772371148983463743700921913930643887223704115714270634525795771407138067936125866995910432010323584269926871467482064993332990516534083898654487467161183876470821163254662352951613205371404232685831299594035879
e = 65537
ciphertext = 2087465275374927411696643073934443161977332564784688452208874207586196343901447373283939960111955963073429256266959192725814591103495590654238320816453299972810032321690243148092328690893438620034168359613530005646388116690482999620292746246472545500537029353066218068261278475470490922381998208396008297649151265515949490058859271855915806534872788601506545082508028917211992107642670108678400276555889198472686479168292281830557272701569298806067439923555717602352224216701010790924698838402522493324695403237985441044135894549709670322380450

possibilities = list(product((7, 2), repeat=2))
p_length = 272
options = [(0, 0)]

for i in range(p_length):
    assert options
    new_options = []
    for p_digit, q_digit in possibilities:
        for p, q in options:
            p += p_digit * 10 ** i
            q += q_digit * 10 ** i
            if n % (10 ** (i + 1)) == (p * q) % (10 ** (i + 1)):
                new_options.append((p, q))
    options = new_options
    # print(i, options)

p, q = list(filter(lambda x: x[0] * x[1] == n and x[0] < x[1], options))[0]
flag = pow(ciphertext, pow(e, -1, (p - 1) * (q - 1)), n)
print(long_to_bytes(flag).decode())