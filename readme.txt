# tsetr290 #

Validate Transport Streams
Useful for checking standards compliance of transport streams before sending for broadcast.
Some code blatantly ripped from tstools from zhoucheng and opencaster.

I'm not a educated programmer so any improvements or wtf's feel free to let me know or make it better yourself.
Python GUI for this will be made in another repo.



```
git clone https://github.com/Emerica/tsetr290.git
cd tsetr290
make
./tsetr290 filname bitrate [debug]
./tsetr290 mytestfile.ts 15000000 1

make install

tsetr290 filname bitrate [debug]
tsetr290 mytestfile.ts 15000000 1


```


Most checks have been implemented, I haven't had a need to pass L3, but again feel free to implement them.



## 1.0 ##
- [x] 1.1  - ERROR - TS_sync_loss
- [x] 1.2  - ERROR - Sync_byte_error
- [x] 1.3a - ERROR - PAT_error - spacing exceeds 500ms
- [x] 1.3b - ERROR - PAT_error - table_id is invalid
- [x] 1.3c - ERROR - PAT_error - scrambling control is not 0
- [x] 1.4  - ERROR - Continuity_count_error
- [x] 1.5a - ERROR - PMT_error - spacing exceeds 500ms
- [x] 1.5b - ERROR - PMT_error - PMT table_id is invalid
- [x] 1.5c - ERROR - PMT_error - scrambling control is not 0
- [x] 1.6  - ERROR - PID_error - PID not found in PMT

## 2.0 ##
- [x] 2.1  - ERROR - Transport_error - Transport_error indicator is 1
- [x] 2.2  - ERROR - CRC_error - Calculated CRC for X
- [x] 2.3a - ERROR - PCR_error - PCR delta is greater than 100ms
- [x] 2.3b - ERROR - PCR_error - PCR delta is greater than 40ms
- [x] 2.4  - ERROR - PCR_accuracy_error - PCR jitter is greater than 500ns
- [x] 2.5  - ERROR - PTS_error - PTS spacing greater than 700ms
- [x] 2.6a - ERROR - CAT_error - transport_scrambling_control set, but no section with no CAT present
- [x] 2.6b - ERROR - CAT_error - Section with table_id other than 0x01 found

## 3.0 ##
- [x] 3.1a - ERROR - NIT_error -  Section with table_id other than 0x40 or 0x41 or 0x72
- [x] 3.1b - ERROR - NIT_error - NIT spacing on pid %d is greater than 10000ms
- [ ] 3.2  - ERROR - SI_repetition_error Repetition rate of SI tables outside of specified limits (25ms) :construction:
- [ ] 3.3  - ERROR - Buffer_error TB_buffering_error :construction:
- [x] 3.4  - ERROR - PID_error - PID found in stream, not in PMT
- [x] 3.5a - ERROR - SDT_error - SDT packets not found in stream
- [x] 3.5b - ERROR - SDT_error -  Section with table_id other than 0x42, 0x46, 0x4A or 0x72
- [x] 3.6a - ERROR - EIT_error - Sections with table_id = 0x4E not present on PID 0x0012 for more than 2 seconds
- [x] 3.6b - ERROR - SDT_error -  Sections with table_ids other than in the range 0x4E - 0x6F or 0x72
- [x] 3.7  - ERROR - RST_error -  Sections with table_id other than 0x71 or 0x72 fo
- [x] 3.8a - ERROR - TDT_error - TDT packets not found
- [x] 3.8b - ERROR - TDT_error -  Section with table_id other than 0x70, 0x72, 0x73
- [ ] 3.9  - ERROR - Empty_buffer_error Transport buffer (TBn) not empty at least :construction:
- [ ] 3.10 - ERROR - Data_delay_error Delay of data (except still picture video data) :construction:
