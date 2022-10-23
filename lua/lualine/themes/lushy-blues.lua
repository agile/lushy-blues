--Theme for lualine

local lush = require("lush")
local hsl = lush.hsl

local colors = {

    red = "#f44747",
    green = "#4EC9B0",

    white = "#FFFFFF",
    black = "#000000",

    teal0 = "#000505", -- hsl(180,100,001),
    teal1 = "#003333", -- hsl(180,100,010),
    teal2 = "#006666", -- hsl(180,100,020),
    teal3 = "#009999", -- hsl(180,100,030),
    teal4 = "#00CCCC", -- hsl(180,100,040),
    teal5 = "#00FFFF", -- hsl(180,100,050),
    teal6 = "#33FFFF", -- hsl(180,100,060),
    teal7 = "#66FFFF", -- hsl(180,100,070),
    teal8 = "#99FFFF", -- hsl(180,100,080),
    teal9 = "#CCFFFF", -- hsl(180,100,090),
    teal10 = "#FAFFFF", -- hsl(180,100,099),

    sky0 = "#000305", -- hsl(203,100,001),
    sky1 = "#001F33", -- hsl(203,100,010),
    sky2 = "#003F66", -- hsl(203,100,020),
    sky3 = "#005E99", -- hsl(203,100,030),
    sky4 = "#007ECC", -- hsl(203,100,040),
    sky5 = "#009DFF", -- hsl(203,100,050),
    sky6 = "#33B1FF", -- hsl(203,100,060),
    sky7 = "#66C4FF", -- hsl(203,100,070),
    sky8 = "#99D8FF", -- hsl(203,100,080),
    sky9 = "#CCEBFF", -- hsl(203,100,090),
    sky10 = "#FAFDFF", -- hsl(203,100,099),

    blue0 = "#010005", -- hsl(255,100,001),
    blue1 = "#0D0033", -- hsl(255,100,010),
    blue2 = "#1A0066", -- hsl(255,100,020),
    blue3 = "#260099", -- hsl(255,100,030),
    blue4 = "#3300CC", -- hsl(255,100,040),
    blue5 = "#4000FF", -- hsl(255,100,050),
    blue6 = "#6633FF", -- hsl(255,100,060),
    blue7 = "#BC66FF", -- hsl(255,100,070),
    blue8 = "#B399FF", -- hsl(255,100,080),
    blue9 = "#D9CCFF", -- hsl(255,100,090),
    blue10 = "#FBFAFF", -- hsl(255,100,099),

    purp0 = "#030005", -- hsl(275,100,001),
    purp1 = "#1E0033", -- hsl(275,100,010),
    purp2 = "#3B0066", -- hsl(275,100,020),
    purp3 = "#590099", -- hsl(275,100,030),
    purp4 = "#7700CC", -- hsl(275,100,040),
    purp5 = "#9500FF", -- hsl(275,100,050),
    purp6 = "#AA33FF", -- hsl(275,100,060),
    purp7 = "#BF66FF", -- hsl(275,100,070),
    purp8 = "#D399FF", -- hsl(275,100,080),
    purp9 = "#EACCFF", -- hsl(275,100,090),
    purp10 = "#FDFAFF", -- hsl(275,100,099),

    grey0 = "#030303", -- hsl(000,000,001),
    grey02 = "#050505", -- hsl(000,000,002),
    grey03 = "#080808", -- hsl(000,000,003),
    grey1 = "#1A1A1A", -- hsl(000,000,010),
    dgrey0 = "#262626", -- between grey1 and grey2
    grey2 = "#333333", -- hsl(000,000,020),
    dgrey1 = "#373737", -- slightly lighter than grey2
    grey3 = "#4D4D4D", -- hsl(000,000,030),
    grey4 = "#666666", -- hsl(000,000,040),
    grey5 = "#808080", -- hsl(000,000,050),
    grey6 = "#999999", -- hsl(000,000,060),
    grey7 = "#B3B3B3", -- hsl(000,000,070),
    grey8 = "#CCCCCC", -- hsl(000,000,080),
    grey9 = "#E6E6E6", -- hsl(000,000,090),
    grey10 = "#FCFCFC", -- hsl(000,009,099),
}

local lushy_blues = {
    normal = {
        a = { fg = colors.black, bg = colors.teal5, gui = "bold" },
        b = { fg = colors.teal5, bg = colors.dgrey1 },
        c = { fg = colors.white, bg = colors.dgrey0 },
    },
    inactive = {
        a = { fg = colors.teal5, bg = colors.dgrey0, gui = "bold" },
        b = { fg = colors.teal2, bg = colors.dgrey0 },
    },
    visual = {
        a = { fg = colors.dgrey0, bg = colors.sky5, gui = "bold" },
        b = { fg = colors.sky5, bg = colors.dgrey1 },
    },
    replace = {
        a = { fg = colors.dgrey0, bg = colors.red, gui = "bold" },
        b = { fg = colors.red, bg = colors.dgrey1 },
        c = { fg = colors.white, bg = colors.dgrey0 },
    },
    insert = {
        a = { fg = colors.dgrey0, bg = colors.green, gui = "bold" },
        b = { fg = colors.green, bg = colors.dgrey1 },
        c = { fg = colors.white, bg = colors.dgrey0 },
    },
    command = {
        a = { fg = colors.dgrey0, bg = colors.purp7, gui = "bold" },
        b = { fg = colors.purp7, bg = colors.dgrey1 },
        c = { fg = colors.white, bg = colors.dgrey0 },
    },
}

return lushy_blues
