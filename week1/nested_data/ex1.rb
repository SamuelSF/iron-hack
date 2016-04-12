arr = [[
    0,
    1,
    2,
    3,
    4,
    {
        :secret => {
            :unlock => [0, "Old Rip Van Winkle Bourbon"]
        }
    }
]
]

hash = {:wat => [0,1,
                    {
                        :wut => [0,[[0, 1, 2, 3, 4, 5, 6, 7, 8,
                            {:bbq => "Four Roses Single Barrel Bourbon"}
                            ]]]
                    }
]
}



puts hash[:wat][2][:wut][1][0][9][:bbq]
puts arr[0][5][:secret][:unlock][1]