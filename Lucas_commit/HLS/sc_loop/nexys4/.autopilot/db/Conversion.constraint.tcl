set clock_constraint { \
    name clk \
    module Conversion::Conversion \
    port ap_clk \
    period 10 \
    uncertainty 2 \
}

set MultiClock_number 1

set MultiClock_constraint {  clk 10 }

set all_path {}

set false_path {}

