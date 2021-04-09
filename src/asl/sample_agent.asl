// Agent sample_agent in project agent_soccer_team

/* Initial beliefs and rules */

/* Initial goals */

!score.

/* Plans */
+!score : beside(ball) & found(goal_r) <- kick(goal_r); !assist.
+!score : beside(ball) & not found(goal_r) <- find(goal_r); !score.
+!score : found(ball) & not beside(ball) <- moveto(ball); !score.
+!score : true <- find(ball); !score.

+!assist : beside(goal_l) <- find(ball); !score.
+!assist : found(goal_l) & not beside(goal_l) <- moveto(goal_l); !assist.
+!assist : true <- find(goal_l); !assist.