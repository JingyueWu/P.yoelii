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
![image](https://user-images.githubusercontent.com/61590108/81425741-2abc7500-9126-11ea-8a0e-5f883c98f639.png)

Conclusions- 
About the same, all 12 are flagged as warning because the position shows N content is above 5%.
I think the reason causes this is still the biased sequence. Will further investigate. 


MultiQC results - (before trimming adapters) 
![image](https://user-images.githubusercontent.com/61590108/81425817-47f14380-9126-11ea-9bbe-a20e38483291.png)

MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81425906-69522f80-9126-11ea-9a37-8887d3374d18.png)

Conclusion – 
After trimming adapters, it seems “worse”, but I think since this graph just shows us the sequence length distribution and I trimmed the adapters, then it’s normal to see that now all sequences are not the same length. This can actually be seen in the first graph (all the way on top), the green shaded column where we can see before trimming they all have the same length but after trimming, some got shorter therefore they differ in length. 


MultiQC results - (before trimming adapters)    
![image](https://user-images.githubusercontent.com/61590108/81425966-85ee6780-9126-11ea-84cb-04f7b5b021b2.png)

MultiQC results – (after trimming adapters) 
![image](https://user-images.githubusercontent.com/61590108/81426043-a28a9f80-9126-11ea-940b-c2d1300cb67b.png)

Conclusion – 
Interestingly they are about the same, same as good which I though would have some flagged as warning because of biased sequence. 


MultiQC results - (before trimming adapters)    
![image](https://user-images.githubusercontent.com/61590108/81426131-c51cb880-9126-11ea-9617-47e90dd0b1a3.png)

MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81426241-ebdaef00-9126-11ea-8d53-9b19aac6be9d.png)

MultiQC results - (before trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81426328-08772700-9127-11ea-8f0e-1d38c63266f9.png)

MultiQC results – (after trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81426504-47a57800-9127-11ea-91d5-e2a6c7bbee1c.png)

Thoughts –
Adapter is actually the part the I spent a lot of time thinking, I kept asking myself questions such as “What type of adapters are being used in this project?”, “Do I even need to trim adapters?”, “If so what would the data look like? Better or worse?” I think knowing the type of adapter being used for the project is important because it’s important to input the right adapter into adapter.fa otherwise it will mess up trimming later. I went to the NCBI page that has all information about this project. I found out that the instrument used is illumina HiSeq 2500, then I went to illumina’s website trying to figure out the type of adapter being used here. I couldn’t. Finally, the way I solved this problem is by running fastqc on these runs and I scrolled down to the bottom of the report where it shows % adapters. I saw one red line in each which indicates the type of adapter being used here is illumina universal adapter. 
Is trimming adapters necessary? To answer this question of mine, I did some investigation. I read an article from https://www.ecseq.com/support/ngs/trimming-adapter-sequences-is-it-necessary , It says if it’s small RNA sequencing, then adapter trimming is highly necessary whereas if it’s transcriptome sequencing, whole genome sequencing, etc., then trimming is not necessary because adapter contamination can be expected to be so small (due to an appropriate size selection) In this project, I think our source is transcriptomic (found on NCBI project page), but just curious, I want to see how trimming is going to affect the data, I did it. 
Conclusions – 
After comparing the report before and after trimming, I’d say trimming isn’t necessary going to make the data/report “better” or “worse”, it depends on what our goal is or what we are looking for. Now looking at the report, since there’s only four runs that received warning, what I can do next is to trim only these four and compare again. Also, determining the adapter type and whether they need to be trimmed or not is also crucial. 


MultiQC results - (before trimming adapters)   
![image](https://user-images.githubusercontent.com/61590108/81426619-76235300-9127-11ea-9d59-9de1d2c54d9b.png)

MultiQC results – (after trimming adapters)   



