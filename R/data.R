library('osfr')

OSFdata <- function(repository='j43pq', filename='AGSBS_questionnaire.csv') {
  
  repo <- osfr::osf_retrieve_node(repository)
  
  datadir <- osfr::osf_ls_files(repo)
  
  idx <- which(datadir$name == filename)
  
  osfr::osf_download(datadir[idx,], path='data/', conflicts='overwrite')
  
}

# downloadURL <- function(url='') {
#   
#   download.file(url=url,
#                 destfile='data/AGSBS_questionnaire.csv')
#   
# }