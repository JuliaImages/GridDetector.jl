using PrecompileTools
using Colors

@setup_workload begin
    
    img = rand(Gray{N0f8}, 500,500)
    
    @compile_workload begin
        res = find_checkerboard(img)
        draw_rect(img, res,  Gray(1)) 
    end
end