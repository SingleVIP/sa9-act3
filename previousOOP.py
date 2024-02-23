class Vehicle:

    def __init__(self, max_speed, mileage, capacity):
        self.max_speed = max_speed
        self.mileage = mileage
        self.capacity = capacity

    def fare(self):
        pass

    def m1(self):
        print(f'I am a generic m1() from the base Class Vehicle')

    def __str__(self):
        return f'From the Vehicle __str__ {self.max_speed}, {self.mileage}, {self.capacity}'