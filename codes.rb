### Buffer 1--------------------------------------------------------------------------------------

use_bpm 145



1.times do
  sample "C:/Users/Berke/Music/AbleforSonic3/Premiere_ Perse - Corde Risonanti [BSLP002].wav"
  sleep 740
end

### Buffer 2--------------------------------------------------------------------------------------


use_debug false
##| use_sched_ahead_time 1
use_bpm 145
set(:bpm, current_bpm)
set(:stop, false)


set_mixer_control! lpf_slide: 1, lpf: 120
set_mixer_control! hpf_slide: 1, hpf: 10

tracker = [0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,]


define :start_loop do |i|
  tracker[i] = 1
end


define :stop_loop do |i|
  tracker[i] = 0
end

define :stop_all do
  tracker[0] = 0
  tracker[1] = 0
  tracker[2] = 0
  tracker[3] = 0
  tracker[4] = 0
  tracker[5] = 0
  tracker[6] = 0
  tracker[7] = 0
  tracker[8] = 0
  tracker[9] = 0
  tracker[10] = 0
  tracker[11] = 0
  tracker[12] = 0
  tracker[13] = 0
  tracker[14] = 0
  tracker[15] = 0
  tracker[16] = 0
  tracker[17] = 0
  tracker[18] = 0
  tracker[19] = 0
  tracker[20] = 0
  tracker[21] = 0
  tracker[22] = 0
  tracker[23] = 0
  tracker[24] = 0
  tracker[25] = 0
  tracker[26] = 0
  tracker[27] = 0
  tracker[28] = 0
  tracker[29] = 0
  tracker[30] = 0
  tracker[31] = 0
  tracker[32] = 0
  tracker[33] = 0
  tracker[34] = 0
  tracker[35] = 0
  tracker[36] = 0
  tracker[37] = 0
  tracker[38] = 0
  tracker[39] = 0
end

live_loop :bar do
  use_bpm get(:bpm)
  sleep 1
end

live_loop :beats do
  sync :bar
  sleep 4
  cue :bass
end

define :pattern do |pattern|
  return pattern.ring.tick == "x"
end

###Directories------------------------------------------------------------------

with_fx :eq, low: -4, high: 1.6 do
  live_loop :ambi1, sync: :bar do
    if tracker[1]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/ambimsi.wav", amp: 1.14,
        cutoff: line(60, 125, steps: 12).mirror.tick
      sleep 16
    else
      sleep 1
    end
  end
end


live_loop :bass1, sync: :bar do
  if tracker[2]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/yanabass_wfx.wav", amp: 1.19,
      cutoff: line(55, 125, steps: 12).mirror.tick
    sleep 16
  else
    sleep 1
  end
end

with_fx :eq, high: -1 do
  live_loop :kick1, sync: :bar do
    if tracker[3]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/kickvibe.wav", amp: 1.21
      sleep 1
    else
      sleep 1
    end
  end
end

live_loop :clhh, sync: :bar do
  if tracker[4]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/yan_clshh.wav", amp: 0.89, cutoff: 119
    sleep 16
  else
    sleep 1
  end
end

live_loop :ophh, sync: :bar do
  if tracker[5]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/yan_ophh.wav", amp: 0.89, cutoff: 121
    sleep 8
  else
    sleep 1
  end
end

with_fx :eq, low: -3, high: 3 do
  with_fx :reverb, mix: 0.2 do
    live_loop :eslik, sync: :bar do
      if tracker[6]>0 then
        sample "C:/Users/Berke/Music/AbleforSonic3/yan_eslik.wav", amp: 1.3,
          cutoff: line(80, 125, steps: 8).mirror.tick
        sleep 32
      else
        sleep 1
      end
    end
  end
end

with_fx :reverb, mix: 0.3 do
  live_loop :clp, sync: :bar do
    if tracker[7]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/yan_clp.wav"
      sleep 4
    else
      sleep 1
    end
  end
end

live_loop :break1, sync: :bar do
  if tracker[8]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/break_two.wav"
    sleep 16
  else
    sleep 1
  end
end

with_fx :ring_mod, freq: 80 do
  live_loop :bass1_var, sync: :bar do
    if tracker[9]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/yanabass_wfx.wav", amp: 1.15
      sleep 16
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1, mid: 1, high: 1.1 do
  live_loop :tube, sync: :bar do
    if tracker[10]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/pipe1.wav", amp: 1.12
      sleep 128
    else
      sleep 1
    end
  end
end

with_fx :slicer, mix: 0.7 do
  with_fx :eq, low: -3, high: 3 do
    live_loop :eslik_var, sync: :bar do
      if tracker[11]>0 then
        sample "C:/Users/Berke/Music/AbleforSonic3/yan_eslik.wav", amp: 1.3,
          cutoff: line(80, 125, steps: 8).mirror.tick
        sleep 32
      else
        sleep 1
      end
    end
  end
end

live_loop :one_note, sync: :bar do
  if tracker[12]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/one_note.wav", amp: 1
    sleep 48
  else
    sleep 1
  end
end

with_fx :eq, high: 1.1, mid: 1, low: -2 do
  live_loop :chmelo, sync: :bar do
    if tracker[13]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/chord_melo.wav", amp: 1.1,
        cutoff: line(65, 125, steps: 6).mirror.tick
      sleep 32
    else
      sleep 1
    end
  end
end

with_fx :eq, high: -2, mid: -1 do
  with_fx :distortion, mix: 0.3 do
    live_loop :kick2, sync: :bar do
      if tracker[14]>0 then
        sample :bd_kick, amp: 1.1, cutoff: 110, rpitch: -4
        sleep 1
      else
        sleep 1
      end
    end
  end
end

with_fx :eq, high: 1.2, mid: 1, low: -1 do
  live_loop :chpad, sync: :bar do
    if tracker[15]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/chord_pad.wav", amp: 1,
        cutoff: line(65, 125, steps: 8).mirror.tick
      sleep 32
    else
      sleep 1
    end
  end
end

with_fx :distortion, mix: 0.29 do
  live_loop :teh_s, sync: :bar do
    if tracker[16]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/teh_sound.wav", amp: 1.1
      sleep 16
    else
      sleep 1
    end
  end
end

##| with_fx :ping_pong, mix: 0.5 do
live_loop :teh_snr, sync: :bar do
  if tracker[17]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/teh_snare.wav", amp: 1.18
    sleep 16
  else
    sleep 1
  end
end
##| end

live_loop :teh_k, sync: :bar do
  if tracker[18]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/teh_kick.wav", amp: 1.32
    sleep 16
  else
    sleep 1
  end
end

live_loop :bass2, sync: :bar do
  if tracker[19]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/bass2.wav", amp: 1.1,
      cutoff: line(75, 125, steps: 12).mirror.tick
    sleep 32
  else
    sleep 1
  end
end

with_fx :eq, high: 1.1, mid: 1, low: -2 do
  live_loop :chmgrp, sync: :bar do
    if tracker[20]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/chord_group.wav", amp: 1
      sleep 32
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -2 do
  live_loop :b1, sync: :bar do
    if tracker[21]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/beat1.wav", amp: 1.16,
        cutoff: line(87, 125, steps: 10).mirror.tick
      sleep 16
    else
      sleep 1
    end
  end
end

with_fx :reverb, mix: 0.2, room: 0.4 do
  with_fx :eq, high: 1.5, mid: 1, low: -2 do
    live_loop :lead, sync: :bar do
      if tracker[22]>0 then
        sample "C:/Users/Berke/Music/AbleforSonic3/lead.wav", amp: 1.17,
          cutoff: line(95, 125, steps: 5).mirror.tick
        sleep 16
      else
        sleep 1
      end
    end
  end
end

with_fx :eq, high: -1 do
  live_loop :kick1_var1, sync: :bar do
    if tracker[23]>0 then
      a = 1.25
      sample "C:/Users/Berke/Music/AbleforSonic3/kick3.wav",
        amp: a if pattern "x-x-x-x-x-x-x-xx"
      sleep 1
    else
      sleep 1
    end
  end
end

with_fx :eq, high: -1 do
  live_loop :kick1_var2, sync: :bar do
    if tracker[24]>0 then
      a = 1.25
      sample "C:/Users/Berke/Music/AbleforSonic3/kick3.wav",
        amp: a if pattern "x-x-x-x-x-x-x-xx"
      sleep 0.5
    else
      sleep 1
    end
  end
end

with_fx :eq, high: -0.5 do
  live_loop :bass3_ext, sync: :bar do
    if tracker[25]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/bass3_extnd.wav", amp: 1.20
      sleep 64
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1 do
  live_loop :ride1, sync: :bar do
    if tracker[26]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/ride.wav", amp: 0.9
      sleep 4
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1 do
  live_loop :hat_new, sync: :bar do
    if tracker[27]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/hat.wav", amp: 0.81
      sleep 16
    else
      sleep 1
    end
  end
end


live_loop :kick3, sync: :bar do
  if tracker[28]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/kick3.wav", amp: 1.28, rpitch: -1
    sleep 1
  else
    sleep 1
  end
end


live_loop :bass3_4bar, sync: :bar do
  if tracker[29]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/bass3.wav", amp: 1.19
    sleep 16
  else
    sleep 1
  end
end

with_fx :eq, low: -1, high: 1.3 do
  live_loop :crz, sync: :bar do
    if tracker[30]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/crazy.wav", amp: 1.11,
        cutoff: line(90, 125, steps: 5).mirror.tick
      sleep 32
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1, mid: 1, high: 1.12 do
  live_loop :melo, sync: :bar do
    if tracker[31]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/dunno_ext.wav", amp: 1.14
      sleep 128
    else
      sleep 1
    end
  end
end

live_loop :br_clap, sync: :bar do
  if tracker[32]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/br_clap.wav", amp: 1.25
    sleep 32
  else
    sleep 1
  end
end

live_loop :br_tie, sync: :bar do
  if tracker[33]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/br_tie.wav", amp: 1.21
    sleep 32
  else
    sleep 1
  end
end

live_loop :br_hh, sync: :bar do
  if tracker[34]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/br_hh.wav", amp: 1.21
    sleep 32
  else
    sleep 1
  end
end

live_loop :br_kick, sync: :bar do
  if tracker[35]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/br_kick.wav", amp: 1.23
    sleep 32
  else
    sleep 1
  end
end

with_fx :reverb, mix: 0.2 do
  with_fx :eq, low: -1, high: 1.1 do
    live_loop :melo_var, sync: :bar do
      if tracker[36]>0 then
        sample "C:/Users/Berke/Music/AbleforSonic3/dunno_4bar.wav", amp: 1.20, cutoff: 118
        sleep 32
      else
        sleep 1
      end
    end
  end
end

with_fx :eq, low: -1, high: 1.2 do
  live_loop :crz_decresc, sync: :bar do
    if tracker[37]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/crazy.wav", amp: 1.11,
        cutoff: line(100, 25, steps: 8).mirror.tick
      sleep 32
    else
      sleep 1
    end
  end
end

###SCRİPT----------------------------------------------

sleep 600
start_loop 1 #ambi1
sleep 80 #80
start_loop 2 #bass
sleep 64 #64
start_loop 4 #clshh
sleep 28
set_mixer_control! hpf_slide: 2, hpf: 100
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 3 #kick
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 70
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
sleep 32
stop_loop 4
sleep 16
stop_loop 1
stop_loop 3
set_mixer_control! lpf_slide: 1, lpf: 10 ##LPF
sleep 1
set_mixer_control! lpf_slide: 32, lpf: 120 ##LPF
start_loop 10 #tube
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 70
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 3
sleep 16
start_loop 5
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 70
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 3
start_loop 6 #eslik
sleep 16
start_loop 3
sleep 32
start_loop 4
start_loop 7 #clap
sleep 64
stop_loop 2
stop_loop 3
stop_loop 4
stop_loop 10
sleep 16
stop_all #----
set_mixer_control! lpf_slide: 16, lpf: 45 ##LPF
start_loop 8 #break
sleep 16
set_mixer_control! lpf_slide: 0.5, lpf: 120 ##LPF
stop_loop 8
start_loop 7
start_loop 3
start_loop 9 #bass_var
start_loop 5
start_loop 4
sleep 32
stop_loop 7
stop_loop 5
start_loop 11 #eslik_var
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 70
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 8
sleep 32
stop_loop 3
sleep 4
start_loop 12 #one_note
start_loop 3
sleep 48
set_mixer_control! hpf_slide: 1, hpf: 70
sleep 8
stop_loop 3
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 8
stop_loop 9
sleep 4
stop_all #----
start_loop 13 #chord_melo
sleep 32
start_loop 15 #chord_pad
sleep 32
start_loop 16 #teh
sleep 16
start_loop 17 #teh_snare
sleep 16
start_loop 19 #bass2
sleep 32
start_loop 18 #teh_kick
sleep 16
start_loop 4
sleep 32
stop_loop 18
start_loop 14 #newkick (kick2)
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 70
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 4
start_loop 5
sleep 8
stop_loop 13
stop_loop 15
start_loop 12
sleep 8
start_loop 7
start_loop 20 #chordgrp
stop_loop 16
sleep 60
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_all #----
start_loop 16 #teh
start_loop 14
start_loop 19
start_loop 21 #beat1
sleep 64
stop_loop 14
sleep 32
start_loop 23 #kickvar1
stop_loop 16 #teh
sleep 32
stop_loop 23
start_loop 22 #lead
start_loop 24
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 24 #kick var2
start_loop 16
sleep 4
stop_loop 19 #bass2
start_loop 24
sleep 36
start_loop 5
start_loop 25 #newbass_extended
sleep 64
stop_loop 5
stop_loop 24
stop_loop 22
stop_loop 16
stop_loop 21
sleep 16
start_loop 26 #ride
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 28 #kick3
start_loop 27 #hat
sleep 60
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 25
start_loop 29 #bass_4bar
stop_loop 26 #ride
stop_loop 27 #hat
start_loop 22 #lead
sleep 28
stop_loop 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
set_mixer_control! lpf_slide: 30, lpf: 45
start_loop 30 #crazy
sleep 32
set_mixer_control! lpf_slide: 0.5, lpf: 120
start_loop 28
sleep 32
start_loop 26
sleep 64
stop_loop 28
stop_loop 26 #ride
stop_loop 22 #lead
stop_loop 29 #bass4bar
stop_loop 30
start_loop 25 #bass_ext
sleep 64
set_mixer_control! lpf_slide: 64, lpf: 45
start_loop 31 #dunno_ext
stop_loop 25
start_loop 29
sleep 32
start_loop 32 #br_clp
stop_loop 30
sleep 32
set_mixer_control! lpf_slide: 32, lpf: 120
start_loop 33 #br_tie
sleep 32
start_loop 34 #br_hh
sleep 32
start_loop 35 #br_kick
stop_loop 31
start_loop 36
sleep 64
start_loop 28
start_loop 5
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_all #---
start_loop 28
start_loop 30 #crazys
start_loop 27
start_loop 22 #lead
start_loop 26
sleep 32
stop_loop 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 28
stop_loop 27
stop_loop 26
start_loop 29 #bass4bar
sleep 64
stop_loop 28
stop_loop 30
stop_loop 29
stop_loop 22
start_loop 37 #crazy_decresc
sleep 94
stop_all #----

##| start_loop 37
  
  
### Buffer 3--------------------------------------------------------------------------------------


use_bpm 148

live_loop :bridge1 do
  stop
  sample "C:/Users/Berke/Music/AbleforSonic3/bridge_idea.wav", amp: 1
  sleep 32
end


live_loop :bridge2 do
  stop
  sample "C:/Users/Berke/Music/AbleforSonic3/bridge2.wav", amp: 0.9
  sleep 128
end


live_loop :bridge3 do
  stop
  sample "C:/Users/Berke/Music/AbleforSonic3/bridge3.wav", amp: 0.7, cutoff: 100
  sleep 64
end



### Buffer 4--------------------------------------------------------------------------------------

use_debug false
##| use_sched_ahead_time 1
use_bpm 148
set(:bpm, current_bpm)
set(:stop, false)


set_mixer_control! lpf_slide: 1, lpf: 120
set_mixer_control! hpf_slide: 1, hpf: 10

tracker = [0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0,
           0, 0, 0, 0]


define :start_loop do |i|
  tracker[i] = 1
end


define :stop_loop do |i|
  tracker[i] = 0
end

define :stop_all do
  tracker[0] = 0
  tracker[1] = 0
  tracker[2] = 0
  tracker[3] = 0
  tracker[4] = 0
  tracker[5] = 0
  tracker[6] = 0
  tracker[7] = 0
  tracker[8] = 0
  tracker[9] = 0
  tracker[10] = 0
  tracker[11] = 0
  tracker[12] = 0
  tracker[13] = 0
  tracker[14] = 0
  tracker[15] = 0
  tracker[16] = 0
  tracker[17] = 0
  tracker[18] = 0
  tracker[19] = 0
  tracker[20] = 0
  tracker[21] = 0
  tracker[22] = 0
  tracker[23] = 0
  tracker[24] = 0
  tracker[25] = 0
  tracker[26] = 0
  tracker[27] = 0
  tracker[28] = 0
end

live_loop :bar do
  use_bpm get(:bpm)
  sleep 1
end

live_loop :beats do
  sync :bar
  sleep 4
  cue :bass
end

basses = "C:/Users/Berke/Music/AbleforSonic3/"



###Directories--------------------------------------------------------------------------



live_loop :scndnd1, sync: :bar do
  if tracker[1]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/2nd1.wav", amp: 1
    sleep 32
  else
    sleep 1
  end
end

with_fx :eq, high: 1.1 do
  live_loop :scndnd2, sync: :bar do
    if tracker[2]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/2nd2.wav", amp: 1.21, cutoff: 120
      sleep 32
    else
      sleep 1
    end
  end
end

live_loop :scndndk, sync: :bar do
  if tracker[3]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/2nd_kick.wav", amp: 1
    sleep 32
  else
    sleep 1
  end
end


live_loop :scndndb, sync: :bar do
  if tracker[4]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/2nd_beat.wav", amp: 1
    sleep 32
  else
    sleep 1
  end
end


live_loop :scndndchord, sync: :bar do
  if tracker[5]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/2nd_chord.wav", amp: 1, pitch: -0.5,
      cutoff: line(95, 125, steps: 8).mirror.tick
    sleep 32
  else
    sleep 1
  end
end

with_fx :eq, high: -1, mid: -0.5 do
  live_loop :kick4, sync: :bar do
    if tracker[6]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/kick_sine.wav", amp: 1.25
      sleep 1
    else
      sleep 1
    end
  end
end

live_loop :bassES, sync: :bar do
  if tracker[7]>0 then
    samplename = ["bass4_n", "bass4_n", "bass_f", "bass_f", "bass_a", "bass_a"].tick
    sample basses, samplename, amp: 1.12
    sleep 16
  else
    sleep 1
  end
end


live_loop :kick5, sync: :bar do
  if tracker[8]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/nice_kick.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :bb, sync: :bar do
  if tracker[9]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/bass_bridge.wav", amp: 1
    sleep 32
  else
    sleep 1
  end
end

live_loop :bassES_ctf, sync: :bar do
  if tracker[10]>0 then
    samplename = ["bass4_n", "bass4_n", "bass_f", "bass_f", "bass_a", "bass_a"].tick
    sample basses, samplename, amp: 1.12, cutoff: 80
    sleep 16
  else
    sleep 1
  end
end

live_loop :hb, sync: :bar do
  if tracker[11]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hard_beat.wav", amp: 1,
      cutoff: line(80, 120, steps: 6).mirror.tick
    sleep 16
  else
    sleep 1
  end
end

live_loop :hf, sync: :bar do
  if tracker[12]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hard_brake_short.wav", amp: 1
    sleep 8
  else
    sleep 1
  end
end

with_fx :reverb, mix: 0.35 do
  live_loop :he, sync: :bar do
    if tracker[13]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/hard_eslik.wav", amp: 1
      sleep 16
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1 do
  live_loop :ride11, sync: :bar do
    if tracker[14]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/ride.wav", amp: 0.9
      sleep 4
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1 do
  live_loop :hhf, sync: :bar do
    if tracker[15]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/hh_falan.wav", amp: 0.9
      sleep 16
    else
      sleep 1
    end
  end
end

with_fx :eq, low: -1 do
  live_loop :leaddyy, sync: :bar do
    if tracker[16]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/leady.wav", amp: 1,
        cutoff: line(90, 125, steps: 8).mirror.tick
      sleep 16
    else
      sleep 1
    end
  end
end

live_loop :kick6, sync: :bar do
  if tracker[17]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/kick_burn.wav", amp: 1
    sleep 1
  else
    sleep 1
  end
end

live_loop :ophh1, sync: :bar do
  if tracker[18]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/open_hh.wav", amp: 0.89, cutoff: 121
    sleep 8
  else
    sleep 1
  end
end

live_loop :clhh1, sync: :bar do
  if tracker[19]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/closed_hh.wav", amp: 0.89, cutoff: 119
    sleep 16
  else
    sleep 1
  end
end

live_loop :collission, sync: :bar do
  if tracker[20]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/colli_bass.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :bilmiyor, sync: :bar do
  if tracker[21]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/bilmiyorum.wav", amp: 1
    sleep 4
  else
    sleep 1
  end
end

live_loop :sacmalamasyon, sync: :bar do
  if tracker[22]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/saçma.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

with_fx :eq, low: -1 do
  live_loop :leaddyy2, sync: :bar do
    if tracker[23]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/leady.wav", amp: 1
      sleep 16
    else
      sleep 1
    end
  end
end

live_loop :hard_times1, sync: :bar do
  if tracker[24]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hardtimes_beat.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :hard_times_sub, sync: :bar do
  if tracker[25]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hardtimes_dofa_sub.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :hard_times_dofa1, sync: :bar do
  if tracker[26]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hardtimes_dofa2.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :hard_times_rtm1, sync: :bar do
  if tracker[27]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hardtimes_rtm.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :hard_times_dofa2, sync: :bar do
  if tracker[28]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hardtimes_dofa1.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

live_loop :hard_times_rtm2, sync: :bar do
  if tracker[29]>0 then
    sample "C:/Users/Berke/Music/AbleforSonic3/hardtimes_rtm2.wav", amp: 1
    sleep 16
  else
    sleep 1
  end
end

with_fx :eq, high: 1.2 do
  live_loop :trv, sync: :bar do
    if tracker[30]>0 then
      sample "C:/Users/Berke/Music/AbleforSonic3/travilazir.wav", amp: 1.12
      sleep 16
    else
      sleep 1
    end
  end
end



###Scripts--------------------------------------------------------------

start_loop 1 #2nd1
sleep 64
start_loop 2 #2nd2
sleep 64
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 3 #2ndkick
sleep 32
start_loop 4 #2ndbeat
sleep 64
stop_loop 3
start_loop 5 #2ndchord
sleep 32
start_loop 8 #nice kik
stop_loop 2
stop_loop 4
sleep 64
stop_loop 1
start_loop 7 #bass_group
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 4
sleep 32
set_mixer_control! hpf_slide: 4, hpf: 58
sleep 32
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 5
sleep 32
stop_loop 8
sleep 32
stop_loop 4
start_loop 6 #kick_sine
start_loop 14 #ride
sleep 64
stop_loop 6
stop_loop 7
start_loop 9
sleep 32
stop_loop 9
stop_loop 14
start_loop 11 #hard_beat
start_loop 10
start_loop 8
sleep 92
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_all #----
start_loop 12 #hard_break
sleep 8
stop_loop 12
start_loop 7 #bass_group
start_loop 6 #kick sine
start_loop 4
start_loop 15 #hh_falan
start_loop 14 #ride
start_loop 11
sleep 32
start_loop 13 #hard_eslik
sleep 32
stop_loop 4
stop_loop 6
stop_loop 14
sleep 4
start_loop 6 #kick_sine
sleep 16
stop_loop 11 #hard_beat
sleep 16
stop_loop 15
sleep 32
stop_loop 6
stop_loop 13
start_loop 16 #leady
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 17 #kick_burn
sleep 32
start_loop 14
sleep 32
start_loop 18 #hh
start_loop 19 #closedhh
sleep 32
set_mixer_control! hpf_slide: 4, hpf: 58
sleep 32
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_loop 19 #cls hh
stop_loop 7
sleep 16
stop_loop 15
sleep 16
stop_loop 18 #open hh
sleep 16
start_loop 20 #collision
sleep 32
stop_loop 17
stop_loop 16 #leady
start_loop 21 #bilmiyorum
sleep 16
start_loop 14
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_all #----
start_loop 12
sleep 8
stop_loop 12
start_loop 17
start_loop 23 #leady_uncut
start_loop 21 #bilmiyorum
start_loop 20 #collision
sleep 32
start_loop 18
sleep 16
start_loop 19
sleep 16
stop_loop 20
sleep 32
stop_loop 17
start_loop 14
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
stop_all #----
start_loop 24 #hardtimes beat
sleep 32
start_loop 25 #sub
sleep 16
start_loop 26 #dofa1
sleep 16
stop_loop 24
start_loop 27 #rtm
sleep 32
start_loop 28 #dofa2
sleep 32
start_loop 24
sleep 16
start_loop 29 #rtm2
sleep 28
set_mixer_control! hpf_slide: 1, hpf: 75
sleep 4
set_mixer_control! hpf_slide: 0.5, hpf: 10
start_loop 17
stop_loop 29
start_loop 14
stop_loop 24
stop_loop 25
stop_loop 26
sleep 32
stop_loop 27
sleep 32
stop_loop 14
start_loop 30
sleep 64
stop_loop 17
start_loop 24
start_loop 29
sleep 32
stop_loop 29
sleep 32
stop_loop 24
start_loop 25
sleep 32
start_loop 27
sleep 32
set_mixer_control! lpf_slide: 64, lpf: 50
sleep 32
stop_loop 25
stop_loop 27
sleep 32
set_mixer_control! lpf_slide: 1, lpf: 10
stop_all#----


##| start_loop 32













