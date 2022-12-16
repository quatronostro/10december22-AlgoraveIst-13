# 10december22-AlgoraveIst-13
These codes are the codes I used in the concert I played on December 10, 2022. I prepared the sound bank myself through Ableton 11 beforehand. In the majority of the code, I call the sounds from this sound bank.

There is a script mechanism in the code. The codes I wrote are run in 4 different buffers. You can place these buffers wherever you want, I just numbered them.

The code works in the following order:

1. The codes in the first buffer are run. (The sound in there is about a 5-minute ambient drone music. It plays once and stops)

2. Immediately after, the codes in the second buffer are run. The script in the codes written here waits for about 4 and a half minutes, then starts the sounds automatically and the live_loop's start and stop automatically. You can follow the music for a while through the script here.

3. When you reach the last 5-10 lines of the script, the sounds in the third buffer are played in sequence. It would be healthier to do this by interpreting the stop command in the live_loop's. The 3 live_loop's in here are run in sequence and wait for the music in the previous buffer to end. You must pay very close attention to the sounds you hear here because there is no other way to follow it outside of your ear. (You can follow the text in the debugging section here, but because the words flow very quickly, this method may not be very healthy.) This part is designed as a bridge to move on to the other buffer.

4. Once you are sure that the sounds in the second buffer have ended and you only hear the sounds in the third buffer, you can now run the script in the final buffer.

5. After the script in the final buffer is run, the live_loop's in the third buffer are stopped one by one from bottom to top, according to the entry of new sounds, this time by listening

<p><i>PS: When transferring these codes to your own computer, you need to adjust the directories to your own computer. 
Inside the sound bank, you can find sounds other than the sounds called in the code. Again, I created them on Ableton but didn't use them. If you find a sound that works for you, you can use it as you wish.</i></p>


I am using Win 11 and Sonic Pi 4.3 version.


<a href="https://on.soundcloud.com/n9YYL">You can listen to these codes here</a>
