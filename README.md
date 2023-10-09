# GridDetector.jl
Detect grids in Julia

#### Checkerboard Detection using GridDetector.jl
```
using FileIO
using GridDetector

img = Gray.(load("test.jpg"))
res = process_image(img)
draw_rect(img, res,  Gray(1))
save("results.png", img)
```

##### Results:
| Input image     | Output Image |
| ----------- | ----------- |
| ![](docs/src/assets/test.jpg) | ![](docs/src/assets/results.png) |