using PrecompileTools
using FileIO
using Colors

println(pwd())
@setup_workload begin
    
    img = rand(Gray, 500,500)
    
    @compile_workload begin
        res = process_image(img)
        draw_rect(img, res,  Gray(1)) 
    end
end