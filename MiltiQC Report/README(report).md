P. falciparum and P. yoelii Sporozoites
NCBI Project: PRJNA453153
NCBI Biosample: SAMN08975569

Search results: 12 runs (all single ends) - 12 SRRs

MultiQC results - (before trimming adapters)    


![image](https://user-images.githubusercontent.com/61590108/81424006-407c6b00-9123-11ea-8acc-e994c10e7f5c.png)


MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81424458-fd6ec780-9123-11ea-8750-860541f8f153.png)

Conclusion: 
After trimming adapters, the numbers of higher failure rate increased.


MultiQC results - (before trimming adapters)    
![image](https://user-images.githubusercontent.com/61590108/81424627-3f980900-9124-11ea-94c1-684b2496b4cc.png)

MultiQC results – (after trimming adapters) 
![image](https://user-images.githubusercontent.com/61590108/81424745-6c4c2080-9124-11ea-84cb-ef41d886338a.png)

Conclusion:  about the same


MultiQC results - (before trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81424849-930a5700-9124-11ea-8f05-6443820907de.png)

MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81424938-b03f2580-9124-11ea-85ef-b463d4c26604.png)

Conclusion: about the same, good quality


MultiQC results - (before trimming adapters)
![image](https://user-images.githubusercontent.com/61590108/81425041-d95fb600-9124-11ea-8a19-6ecf67b97c71.png)

MultiQC results – (after trimming adapters)  
![image](https://user-images.githubusercontent.com/61590108/81425112-f4322a80-9124-11ea-97b3-57957eae6bce.png)

Conclusion: about the same, good quality


MultiQC results - (before trimming adapters) 
![image](https://user-images.githubusercontent.com/61590108/81425194-19269d80-9125-11ea-9380-3d57e8b06964.png)

![image](https://user-images.githubusercontent.com/61590108/81425251-38bdc600-9125-11ea-8c54-f7b2c99bc2fd.png)

![image](https://user-images.githubusercontent.com/61590108/81425296-525f0d80-9125-11ea-9d77-8083ddf6ac1d.png)

MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81425354-6f93dc00-9125-11ea-8d84-59cb4cbc3756.png)

![image](https://user-images.githubusercontent.com/61590108/81425401-8803f680-9125-11ea-9010-96c19c88f90b.png)

Conclusion – 
After trimming, this part of the report did seem to be a little “worse” – before trimming, 10 failed, 2 got warning; but after trimming, 11 failed and 1 got warning. Failure means the difference between A and T, or G and C is greater than 20% in any position. And warning means the difference between A and T, or G and C is greater than 10% in any position. One of the reasons that might cause this is the overrepresented sequence in the sample. These sequences may bias the overall composition. Later, in the report, I found that before trimming, there are only one overrepresented sequences that failed (SRR7059095), but after trimming, the number of overrepresented sequences failure went up to four (SRR7059095, SRR7059096, SRR7059100, SRR7059101)


MultiQC results - (before trimming adapters)  
![image](https://user-images.githubusercontent.com/61590108/81425482-af5ac380-9125-11ea-9044-432f3fd4a2f5.png)

MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81425551-cb5e6500-9125-11ea-8c33-a1be52b65be8.png)

Conclusion – 
About the same, all 12 runs fail because the sum of the deviations from the normal distribution represents more than 30% of the reads. I think there might be contamination in the library that cause this. Will further investigate.


MultiQC results - (before trimming adapters)
![image](https://user-images.githubusercontent.com/61590108/81425649-0496d500-9126-11ea-96e8-5f4d60ac9c38.png)

MultiQC results – (after trimming adapters)   


Conclusions- 
About the same, all 12 are flagged as warning because the position shows N content is above 5%.
I think the reason causes this is still the biased sequence. Will further investigate. 















