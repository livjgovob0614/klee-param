import gym

env = gym.make('CartPole-v0')
env.reset()
for i in range(1, episode):
  for _ in range(1000):
    env.render()
    action = env.action_space.sample()
    env.step(action)
    if done:
      break
  env.close()
