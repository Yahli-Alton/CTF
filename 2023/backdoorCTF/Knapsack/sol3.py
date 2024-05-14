numbers = [600848253359, 617370603129, 506919465064, 218995773533, 831016169202, 501743312177, 15915022145, 902217876313, 16106924577, 339484425400, 372255158657, 612977795139, 755932592051, 188931588244, 266379866558, 661628157071, 428027838199, 929094803770, 917715204448, 103431741147, 549163664804, 398306592361, 442876575930, 641158284784, 492384131229, 524027495955, 232203211652, 213223394430, 322608432478, 721091079509, 518513918024, 397397503488, 62846154328, 725196249396, 443022485079, 547194537747, 348150826751, 522851553238, 421636467374, 12712949979]
sum_ = 7929089016814
new_numbers = []

for i, number in enumerate(numbers):
    if i % 8 != 7:
        new_numbers.append(number)


def subset_sum(numbers, sum_, i=0):
    if sum_ == 0:
        return 0
    if sum_ < 0:
        return
    if i == len(numbers):
        return
    
    possibility = subset_sum(numbers, sum_, i + 1)
    if possibility is not None:
        return possibility << 1
    possibility = subset_sum(numbers, sum_ - numbers[i], i + 1)
    if possibility is not None:
        return (possibility << 1) + 1

print(bin(subset_sum(new_numbers, sum_)))
