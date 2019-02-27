This directory and its subdirectories contain all of the files and scripts 
associated with the Intron Annotation Database (IAOD), including pipelines for 
adding new data to the database (the series of batch scripts starting with 
add_genome1.sh), re-creating the entire database backend from scratch (the 
series of batch scripts starting with create_db1.sh), and all of the scripts,
templates, etc. necessary to run the actual website (contained within the 
intron_website, results, orthologs, sitepages, static, and templates 
directories). 

For details on how to use the add_new_genome and create_db
pipelines, see the first batch scripts in each pipeline. Note that the 
pipelines will create a PostgreSQL database, and the connect statements in line
79 of reformatting.py and lines 88-90 of intron_website/settings.py may need to
be changed. 
