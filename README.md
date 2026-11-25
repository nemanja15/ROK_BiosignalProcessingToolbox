# ROK_BiosignalProcessingToolbox

MATLAB implementation of the following biosignal processing methods applicable to EMG and EEG:

- DC offset removal
- Hilbert envelope extraction
- Envelope normalization
- Power spectral density estimation (Welch's method)
- Time-domain feature extraction, including Hjorth parameters

## Usage

Run `demo.m` for an example using synthetic signals. Requires MATLAB with Signal Processing Toolbox and Statistics and Machine Learning Toolbox.

Multichannel inputs are arranged as channels by samples. `ComputeTimeFeatures` expects a single column vector. `NormalizeSignal` requires nonzero mean envelope amplitude. `HjorthParameters` is a newly added compatibility helper and requires nondegenerate signals.

## Citation and Acknowledgment

If you use or adapt this toolbox or any of its constituent functions for research or software development, please acknowledge its use by citing this repository.

Citation information is available via the "Cite this repository" option on GitHub.
