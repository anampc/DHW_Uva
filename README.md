# Heat stress at Uva Island during the </br> 1982-83, 1997-98 and 2015-16 ENSOs

</br>

### Description:

This repository obtains and analyzes SST data for Uva Island reef to compare the intensity of heat stress during the past three major ENSOs.

</br>

### Content:

#### A.Temperature_DHW.Rmd:
This script uses the temperature data in the **B.Temperature_data** folder to calculate the accumulated heat stress (DHW) at Uva Island reef, based on three different temperature data sources (OISST, CRW and In situ sensors). Figures resulting from running the script are saved in the **C.Outputs** folder.

</br>

#### B.Temperature_data: 
Directory containing data files in .csv format with the temperature data for Uva Island reef from different sources


* **B.Temperature_data/Uva_CRW_MMM_1985-2012.csv:** Coral Reef Watch MMM (5km products v3.1) for the closest pixel to Uva Island reef

* **B.Temperature_data/Uva_Daily_CRW_5km_1985-2016.csv:** Coral Reef Watch SST data (5km products v3.1) for the closest pixel to Uva Island reef

* **B.Temperature_data/Uva_Daily_InSitu_1997-2018.csv:** In situ temperature data obtained from 1997-2018 at Uva Island reef ("Gardineroseris city') ~ 3m depth

* **B.Temperature_data/Uva_Daily_OISST_1982-2016.csv:** Optimal Interpolation SST data (V2) for the closest pixel to Uva Island reef

* **B.Temperature_data/BanderasBay_Daily_OISST_1982-2016.csv:** Optimal Interpolation SST data (V2) for the closest pixel to Uva Island reef

</br>

#### C.Outputs: 
Directory containing figure files related with temperature and DHW included on the paper.

* Figure 1a and 2a
* Figure S4
* Figure S5 
* Figure S6
* Figure S7
* Figure S8

</br>

#### D.SST_nc: 
Directory containing scripts used to download and extract OISST and CRW SST data from .nc files. You do not have to run the code in the **D.SST_nc** folder to produce the data analysis in the paper (this can be achieved by running **A.Temperature_DHW.Rmd** using the temperature data already provided in **B.Temperature_data**). However, you could use these scripts to retrieve and extract the SST data by yourself.The outputs of these scripts are already included in **B.Temperature_data/Uva_CRW_MMM_1985-2012.csv:**, **B.Temperature_data/Uva_Daily_CRW_5km_1985-2016.csv**" and **B.Temperature_data/Uva_Daily_OISST_1982-2016.csv**. By running the scripts inside this folder you will create those files again in the "**D.SST_nc**" folder.

You would need ~ 123GB of space for CRW SST data and ~17GB for OISST data

- **D.SST_nc/1.Get_OISST_data.sh:** This script downloads 1981-2016 NOAA OI SST V2 High Resolution data from ftp://ftp.cdc.noaa.gov/Datasets/noaa.oisst.v2.highres/ 
   
- **D.SST_nc/2.Get_CoralTemp_data.sh:**  This script downloads NOAA CRW 5km SST data (CoralTemp v3.1) (fftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/coraltemp/v1.0/nc/) and the 1985-2012 climatology  (ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1/climatology/nc/ct5km_climatology_v3.1.nc). It could also download the already calculated DHW values (ftp://ftp.star.nesdis.noaa.gov/pub/sod/mecb/crw/data/5km/v3.1/nc/v1.0/daily/dhw/) directly from NOAA CRW 5km products. However, these lines are commented by default since we performed these calculations ourselves based on the CRW SST data (CoralTemp) and MMM. 

- **D.SST_nc/3.Extract_SST_Uva.Rmd:** This script extracts the SST data from OISST and CRW datasets for Uva Island. It also extracts the already calculated climatology (MMM) from CRW 5km products. CRW DHW values from NOAA CRW 5km products can be extracted as well. However, these lines are commented by default since we performed these calculations ourselves based on the CRW SST data (CoralTemp) and MMM.

