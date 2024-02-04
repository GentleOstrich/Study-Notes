# motion segmentation

detect and track:13->181->188

segmentation:127->154->132->155->128 133

## 127:  Accurate Angular Velocity Estimation With an Event Camera

Estimating the rotational motion (Estimating the angular velocity) of an event camera, using the information from events to directly.

CORE: a contrast maximization design (motion-compensated ??)

sliding window approach ??

philosophy: motion estimation by means of **edge alignment** in terms of **contrst** maximization (motion-compensated ??)

The mothods aligns events corresponding to the same scene edge by maximazing the strength of edges obtained by aggregating motion-warped events, providing an intuitive formulation in terms of contrast maximization.

Contrast is a basic signal statistic with broad applicability.



The events along a trajectory are triggered by the same scene edge and they all have the same polarity, using them to analyse the edge structure and **reveal the camera motion**.



naively sum the event polarities pixelwise (along  trajectories parallel to the time axis), analogous to the motion blur effect in standard cameras.



How to Create an Event Image$\rightarrow$

How to Displace Events$\rightarrow$

How to measure the strength of the edges$\rightarrow$

Maximization Strategy and How to Process an Entire Event Stream

该论文针对只有旋转自运动的相机，通过使运动补偿达到最好，得到的旋转参数，该参数可以认为是相机自运动的角速度。

## 154: Simultaneous Optical Flow and Segmentation (SOFAS) using Dynamic Vision Sensor （give up）

optical flow

Introducint a novel way of computing the optic flow of events, while segmenting evneets by the structures

no need for any derivatives ??

## 132: Event-based Moving Object Detection and Tracking 

motion compensation pipeline

new time-image representation

dataset



3D point cloud processing techniques [11]



corse motion minimization on T

fine motion monimiaztion on I



https://github.com/better-flow/better-flow.git

https://github.com/HKUST-Aerial-Robotics/EMSGC.git





Existing a motion model, some event clusters conform to it, while some event clusters do not conform to it. 

Labeling them as separately moving regions, then fitting motion model to them.

输入事件集C包含在t_0到t_0+t_\delta t里的事件{x, y, t}，随便选一个t_0，

C'是C经过$\Pi\phi$映射后的是三元组集合{x', y', 0}，$\phi$改变x,y，$\Pi$将事件变成0

$\Pi$的可以简化最小化过程

将C中的数据表示为两张离散图，事件属性、强度属性



Event Count Image

计算C'的事件密度D

(i,j) 像素点

$\xi_{ij}=\{\{ x',y,'t\}:\{x', y', 0\} \in C', i = x', j = y'\}$ 投影到某个像素点(i,j)上的C'中元素的集合

$\Iota_{ij}=|\xi_{ij}|$ 投影到某个像素点(i,j)上的C'中元素的数量

$D=\frac{\sum_{ij}\Iota_{ij}}{\#\Iota}$ 分子就是C'的集合大小，#I是被映射到的像素点的数量



Time-image

$\Tau_{ij}=\frac{1}{\Iota_{ij}}\sum t:t\in \xi_{ij}$


$$
event (x, y, t) \\
\phi(x, y, t-t_0): (x,y,t)\rightarrow(x',y',t) \\ 
C' = \Pi\{\phi(C)\} = \Pi\{\phi(x, y, t-t_0)\} = \{x', y', 0\} \\
\xi_{ij}=\{\{ x',y,'t\}:\{x', y', 0\} \in C', i = x', j = y'\} \\
\Iota_{ij}=|\xi_{ij}| \\
D=\frac{\sum_{ij}\Iota_{ij}}{\#\Iota} \\
\Tau_{ij}=\frac{1}{\Iota_{ij}}\sum t:t\in \xi_{ij}
$$



## 2023: Event-based Motion Segmentation with Spatio-Temporal Graph Cuts

→ an energy minimazation one involving the fitting of multiple motion models

2 subproblems: event-cluster assignment (labeling), motion model fitting

by exploiting the structrue of the input event data in the form of a spatio-temporal graph

event-based motion segmentation: classifying events occurred during a time interval into several groups that repesent coherent moving objects.

之前需要prior knowledge→IMO的形状，被解决的几何初始态和相机的运动之间的关系；

后来不需要了，使用了序列策略，由先分析dominant event，再移除它们，再去分析接下来的事件

method: general parametric mothods (motion models)



produce sharp, motion-compensated images as a by-product



First, we formulate the problem using Markov Random Fields (MRF) and defining a spatio-temporal graph through the events, enabling to solve the problem with graph cuts.

Second, we pose the problem as a joint optimization over the motion parameters and event associations, (via an energy formulation).

Third, digging into details of the event alignment data-fidelity terms

Finally, provide a new initialization method





















