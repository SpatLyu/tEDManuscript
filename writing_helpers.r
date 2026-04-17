# figures: pdf -> png
.pdf2png = \(pdfname,pngname,dpi = 300){
  pdftools::pdf_convert(pdf = pdfname, filenames = pngname, dpi = dpi)
}

fs::dir_ls("./manuscript_revision/figure_pdf/", regexp = ".pdf$") |>
  stringr::str_sub(34,-5) |> 
  purrr::walk(\(.x) {
    .pdf2png(paste0('./manuscript_revision/figure_pdf/',.x,'.pdf'),
             paste0('./manuscript_revision/figure/',.x,'.png'))
  })

# references: doi -> bibtex
doi2bib = \(doi,style = "elsevier-harvard"){
  return(rcrossref::cr_cn(dois = doi, style = style, format = "bibtex"))
}

# methods

doi2bib("10.1098/rspl.1895.0041")        # pcc
doi2bib("10.2307/1912791")               # granger test
doi2bib("10.1111/pirs.12144")            # spatial-granger
doi2bib("10.1103/PhysRevLett.85.461")    # transfer entropy
doi2bib("/10.1038/s43588-020-00005-8")   # quasi-experimental designs
doi2bib("10.1093/ije/dyv080")            # instrumental variables
doi2bib("10.18637/jss.v048.i02")         # sem
doi2bib("10.1126/sciadv.aau4996")        # pcmci
doi2bib("10.1038/s41467-024-53373-4")    # surd
doi2bib("10.1038/s41467-023-39983-4")    # gobi
doi2bib("10.1109/TVCG.2021.3114875")     # urban_granger_causality
doi2bib("10.1016/j.cities.2025.105980")  # urban_transfer_entropy

doi2bib("10.1103/PhysRevA.45.3403")   # fnn
doi2bib("10.1038/344734a0")           # simplex projection
doi2bib("10.1126/science.1227079")    # ccm
doi2bib("10.1038/s41467-020-16238-0") # pcm
doi2bib("10.1016/j.fmre.2023.01.007") # cmc
doi2bib("10.1093/bib/bbad281")        # cme
doi2bib("10.1038/srep07464")          # cms
doi2bib("10.1038/s41467-023-41619-6") # gccm
doi2bib("10.1890/14-1479.1")          # multispatialccm

doi2bib("10.2139/ssrn.2637764")       # sdid
doi2bib("10.1177/0160017619869781")   # srdd 

doi2bib("10.1111/j.1538-4632.1996.tb00936.x") # gwr
doi2bib("10.1002/9780470517277")              # gstat

doi2bib("10.1177/1536867X211000030")  # fastEDM package
doi2bib("10.18637/jss.v077.i02")      # bnlearn package

# reviews

doi2bib("10.1038/s41467-019-10105-3")   # review1 
doi2bib("10.1038/s43017-023-00431-y")   # review2

doi2bib("10.1016/j.scib.2021.10.002")   # Temporally or spatially
doi2bib("10.1111/gean.12312")           # spatial causality review
doi2bib("10.1016/j.spasta.2022.100621") # causal inference in spatial statistics

# discussions

doi2bib("10.1109/TSP.2023.3286529")
doi2bib("10.1016/j.future.2016.12.009")

# applications

doi2bib("10.1073/pnas.1104268108")        # climate change & human crisis + granger causality test
doi2bib("10.1016/j.scs.2024.105850")      # urban heat island effect + PC
doi2bib("10.1016/j.scs.2025.106240")      # urban transport + PCMCI
doi2bib("10.1073/pnas.1300018110")        # air pollution & life expectancy + RDD
doi2bib("10.1111/mice.13334")             # urban traffic networks + CCM
doi2bib("10.1038/s41467-024-48199-z")     # ozone & influenza + CCM PCMCI+ GLM
doi2bib("10.1016/j.eneco.2021.105271")    # high-speed rail & CO2 emissions
doi2bib("10.1038/s41467-024-52693-9")     # global protected areas & resisting habitat loss
doi2bib("10.1016/j.compenvurbsys.2023.101957") # mobility intervention policies
doi2bib("10.1016/j.compenvurbsys.2024.102206") # global city carbon emissions

# packages

doi2bib("10.18637/jss.v040.i08")    # Rcpp
doi2bib("10.18637/jss.v097.c01")    # RcppThread
doi2bib("10.21105/joss.00026")      # Armadillo
doi2bib("10.5334/jors.bu")          # ropensci
 
# others 

doi2bib("10.1007/978-1-4612-2748-9")      # pc
doi2bib("10.7551/mitpress/9399.001.0001") # new science of cities
doi2bib("10.1016/j.ecolind.2016.03.054")
doi2bib("10.1038/ncomms9502")
doi2bib("10.1126/science.209.4458.763")
doi2bib("10.1007/s11869-022-01168-1") # o3 <-> no2
