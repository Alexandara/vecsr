def detected_front_collision():
    answer = input("Is there an object in front of the drone? (y/n) ")
    if answer == "y":
        return True
    return False