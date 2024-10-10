% Родово-видові зв'язки (is_a)
is_a(laptop, computer).
is_a(desktop, computer).
is_a(smartphone, electronic_device).
is_a(tablet, electronic_device).
is_a(computer, electronic_device).
is_a(electronic_device, technology).
is_a(technology, innovation).
is_a(laptop, portable_device).
is_a(smartphone, portable_device).

% Частина-ціле зв'язки (part_of)
part_of(screen, laptop).
part_of(keyboard, laptop).
part_of(battery, smartphone).
part_of(camera, smartphone).
part_of(processor, computer).
part_of(hard_drive, desktop).
part_of(motherboard, desktop).
part_of(display, tablet).
part_of(battery, tablet).
part_of(screen, smartphone).
part_of(cpu, processor).
part_of(ram, motherboard).
part_of(gpu, motherboard).
part_of(power_supply, desktop).

% Властивості
color(X, Color) :- is_a(X, ColorType), color(ColorType, Color).
weight(X, Weight) :- is_a(X, WeightType), weight(WeightType, Weight).

% Визначення кольорів
color(electronic_device, gray).
color(laptop, silver).
color(desktop, black).
color(smartphone, black).
color(tablet, white).
color(portable_device, black).

% Визначення ваги
weight(electronic_device, lightweight).
weight(laptop, 1.5).
weight(desktop, 10).
weight(smartphone, 0.2).
weight(tablet, 0.5).
weight(portable_device, 0.4).

% Правило заборони наслідування
weight(tablet, Weight) :- Weight < 0.5.

% Мульти-наслідування
color(X, Color) :- is_a(X, Y), color(Y, Color).
weight(X, Weight) :- is_a(X, Y), weight(Y, Weight).
