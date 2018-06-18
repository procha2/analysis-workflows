#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
label: "bedGraph to bigwig conversion"
baseCommand: ["/usr/bin/bedGraphToBigWig"]
requirements:
    - class: ShellCommandRequirement
    - class: ResourceRequirement
      ramMin: 16000
      coresMin: 1
arguments:
    - position: 3
      valueFrom: "cpgs.bw"
inputs:
    bedgraph:
        type: File
        inputBinding:
            position: 1
    reference_sizes:
        type: File
        inputBinding:
            position: 2
outputs:
    cpg_bigwig:
        type: File
        outputBinding:
            glob: "cpgs.bw"