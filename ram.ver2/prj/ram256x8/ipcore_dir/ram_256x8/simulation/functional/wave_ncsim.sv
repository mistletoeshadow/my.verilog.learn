

 
 
 




window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /ram_256x8_tb/status
      waveform add -signals /ram_256x8_tb/ram_256x8_synth_inst/bmg_port/CLKA
      waveform add -signals /ram_256x8_tb/ram_256x8_synth_inst/bmg_port/ADDRA
      waveform add -signals /ram_256x8_tb/ram_256x8_synth_inst/bmg_port/DINA
      waveform add -signals /ram_256x8_tb/ram_256x8_synth_inst/bmg_port/WEA
      waveform add -signals /ram_256x8_tb/ram_256x8_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"