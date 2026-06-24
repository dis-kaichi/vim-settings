require("keymaps.dart").setup(vim.api.nvim_get_current_buf())

vim.bo.autoindent = true
vim.bo.smartindent = true

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true

vim.bo.cinwords = "if,elif,else,for,while,try,except,finally,class,for"

vim.bo.cinoptions =
    ">2,e,n-2,f0,{0,}0,^0,L-1,:s,=s,l0,b0,gs,hs,N0,E0,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,k0,m0,j0,J0,)20,*70,#0,P0"
