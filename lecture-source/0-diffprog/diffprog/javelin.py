from math import sin, cos

def javelin(theta=0.1, gamma=0.001):
    distance = 80 * sin(2 * theta)
    print(theta, distance)
    
    for i in range(100):
        dtheta = 160 * cos(2 * theta)
        theta = theta + gamma * dtheta
    
        distance = 80 * sin(2 * theta)
        print(theta, distance)
