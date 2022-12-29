state("DrugDealerSimulator-Win64-Shipping") {
    int level : 0x02FD8BB0, 0x20, 0xB0, 0x7D0, 0x350, 0x348;
}

startup {
    for (int i = 2; i <= 25; i++) {
        settings.Add(i.ToString(), true, i.ToString());
    }
}

split {
    if (current.level <= old.level) {
        return false;
    }
    return settings[current.level.ToString()];
}
