using Test
using GridDetector  
using FileIO

res_expected = Any[CartesianIndex(215, 122), CartesianIndex(261, 122), CartesianIndex(123, 123), CartesianIndex(169, 123), CartesianIndex(308, 123), CartesianIndex(354, 124), CartesianIndex(122, 168), CartesianIndex(168, 168), CartesianIndex(214, 168), CartesianIndex(261, 168), CartesianIndex(307, 169), CartesianIndex(353, 169), CartesianIndex(121, 213), CartesianIndex(167, 213), CartesianIndex(213, 214), CartesianIndex(260, 214), CartesianIndex(307, 215), CartesianIndex(354, 216), CartesianIndex(120, 259), CartesianIndex(166, 260), CartesianIndex(213, 260), CartesianIndex(260, 260), CartesianIndex(307, 261), CartesianIndex(354, 262), CartesianIndex(119, 306), CartesianIndex(165, 306), CartesianIndex(212, 307), CartesianIndex(259, 307), CartesianIndex(306, 308), CartesianIndex(354, 309), CartesianIndex(118, 352), CartesianIndex(164, 353), CartesianIndex(211, 354), CartesianIndex(259, 354), CartesianIndex(306, 355), CartesianIndex(354, 356), CartesianIndex(117, 399), CartesianIndex(164, 400), CartesianIndex(211, 401), CartesianIndex(258, 402), CartesianIndex(306, 403), CartesianIndex(353, 404), CartesianIndex(116, 446), CartesianIndex(163, 447), CartesianIndex(210, 449), CartesianIndex(257, 449), CartesianIndex(305, 451), CartesianIndex(353, 451), CartesianIndex(116, 494), CartesianIndex(162, 495), CartesianIndex(209, 496), CartesianIndex(257, 497), CartesianIndex(304, 498), CartesianIndex(352, 499)]

img = Gray.(load("test-images/test.jpg"))
res = process_image(img)

@test res_expected == res