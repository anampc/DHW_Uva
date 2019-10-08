#!/bin/bash


# Go to the script directory
	cd "${0%/*}"


# Obtain SST data from NOAA CRW SST (CoralTemp V1) dataset
		# Uses ~122GB of space 

		# Make a folder for the .nc files and navigate to it
			mkdir Daily_CoralTemp_3.1
			cd Daily_CoralTemp_3.1/

		# Get the SST data from the 1985-2016 period from the NOAA CRW 5km dataset
		# ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/coraltemp/v1.0/nc/

			for i in `seq 1985 2016`; do wget "ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/coraltemp/v1.0/nc/$i/*.nc" ./; done


# Obtain DHW data from NOAA CRW (V3.1) dataset
		#  Uses ~34GB of space 

		# Make a folder for the .nc files and navigate to it
			#cd ../
			#mkdir Daily_CWR_DHW_3.1
			#cd Daily_CWR_DHW_3.1/

		# Get the DHW data from the 1985-2016 period from the NOAA CRW 5km dataset
		# ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1/nc/v1.0/daily/dhw/

			#for i in `seq 1985 2016`; do wget "ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1/nc/v1.0/daily/dhw/$i/*.nc" ./; done


# Obtain SST MMM data from NOAA CRW V3.1

      Get the climatology data from ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1/climatology/nc/
			cd ../
			wget -c "ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1/climatology/nc/ct5km_climatology_v3.1.nc" ./