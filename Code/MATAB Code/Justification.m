num1 = fp16([12.35 589 0 82]);
num2 = fp16([-5.25 0.8 8950 -0.09]);

add = fp16(double(num1) + double(num2))
mul = fp16(double(num1) .* double(num2))
div = fp16(double(num1) ./ double(num2))
