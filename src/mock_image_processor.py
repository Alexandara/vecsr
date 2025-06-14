def detected_front_collision(png):
    answer = input("Is there an object in front of the drone? (y/n) ")
    if answer == "y":
        return True
    return False