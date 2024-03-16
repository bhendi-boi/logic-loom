function position = position(mass, stiffness, t)
    omega = sqrt(stiffness / mass);
    position = sin(omega * t);
end