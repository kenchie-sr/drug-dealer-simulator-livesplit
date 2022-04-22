state("DrugDealerSimulator-Win64-Shipping") {
    int level : 0x02DA4500, 0xC8, 0x70, 0xB0, 0x5D0, 0x350, 0x348;
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
