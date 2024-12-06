# startup.jl
using OhMyREPL
using Revise
using Images
using TestImages
# end;

testimage("cameraman")
    
# function cuteHeartAnimation(;x::Int64=41, y::Int64=16)
#     # rotation angle 'd' goes from 0 to 2π (one revolution)
#     0:50π*1e-3:2π .|> d-> (
#     # screen buffer, with empty braille characters and new lines
#     (P = fill(5<<11,41,16))[41,:] .= 10;  # <-- CHANGED; buffer size
#     # transformation vector: cis = rotation, sin = zoom
#     z = 8cis(d)sin(.46d);
#     # loop over all pixels
#     for r = 0:62, c=0:79 # r=0:4y-2, c=0:2x-3  # <-- CHANGED; 62 = 16*4-2, 79 = 41*2-3
#         # (..)z = scale and rotate point, using complex numbers
#         # reim = split complex number into x/y
#         # mod = repeat pattern
#         x,y = @.mod(2 - $reim((2c/79-r/31im-1-im)z), 4) - 2;  # <-- CHANGED, to match max r and c
#         # test if point is within a heart shape
#         √2(y+.5-√√x^2)^2 < 4-x^2 &&
#             # set pixel, using braille characters
#             (P[c÷2+1,r÷4+1] |= Int(")*,h08H¨"[1+r&3+4&4c]) - 40)
#     end;
#     # print buffer to screen
#     print("\e[H\e[1;31m", join(Char.(P))));
# end

# cuteHeartAnimation()

function printAsciiArt(file_path::String)
    try
        open(file_path, "r") do file
            for line in eachline(file)
                println(line)
            end
        end
    catch e
        println("Error reading file: $e")
    end
end

# Path to your ASCII art file
ascii_image = "irene_ascii01.txt"

ascii_art_path = joinpath(@__DIR__, "images", ascii_image)

# Print the ASCII art
# printAsciiArt(ascii_art_path)
# cuteHeartAnimation()

# cuteHeart()

# println("Time wasted for this custom startup = $(tPack) seconds.")