mass = 10;
stiffness = 2;
t = 4;
position_at_t = position(mass, stiffness, t);
fprintf('Position of the spring at t = %ds: %.4f meters\n', t, position_at_t);