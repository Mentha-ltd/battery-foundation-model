# Mentha Battery Foundation Model

Mentha is a deep tech startup building diagnostic infrastructure for second-life EV battery modules.

Second-life EV battery module capacity testing can take several hours per module. Additionally,
the EU Digital Battery Passport arriving in 2027 requires a strong audit trail for battery
operators and repurposers. Mentha aims to build an open foundation model for State of Health
(SoH) estimation of lithium-ion batteries using Electrochemical Impedance Spectroscopy (EIS),
taking raw EIS spectra as input and backed by the CNN-GRU deep learning architecture (Method B)
based on Giazitzis et al. 2025, Journal of Power Sources.

This repository is composed of 6 EIS datasets. The roadmap is:

- **v1:** Reproduce LP-503562 baseline (target: 1.20% RMSE per Giazitzis et al.)
- **v2:** Multi-dataset training across chemistries
- **v3:** Physics-informed, multi-chemistry foundation model

---

## Datasets

| Dataset          | Chemistry | EIS | Degradation | Source                                                                                                                     |
| ---------------- | --------- | --- | ----------- | -------------------------------------------------------------------------------------------------------------------------- |
| LP-503562        | LiPo      | ✅  | ✅          | [Mendeley](https://data.mendeley.com/datasets/stcppt2r68/1)                                                                |
| Zhang 2020       | LCO       | ✅  | ✅          | [Zenodo](https://doi.org/10.5281/zenodo.3633835)                                                                           |
| NASA B0005–B0018 | NMC/LCO   | ✅  | ✅          | [NASA PCoE](https://www.nasa.gov/intelligent-systems-division/discovery-and-systems-health/pcoe/pcoe-data-set-repository/) |
| Cassino LFP      | LFP       | ✅  | ✅          | [Mendeley](https://data.mendeley.com/datasets/cb887gkmxw/1)                                                                |
| Samsung ICR18650 | LCO       | ✅  | ✅          | [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9493380/)                                                                   |
| LiBforSecUse     | NMC       | ✅  | ✅          | [Zenodo](https://doi.org/10.5281/zenodo.6418665)                                                                           |

---

## Architecture

This repository implements Method B from Giazitzis et al. (2025):

- **Input:** Raw EIS spectra — frequency, Z_real, Z_im
- **Model:** CNN-GRU (Convolutional Neural Network + Gated Recurrent Unit)
- **Output:** Predicted State of Health (SoH) percentage
- **Reference:** Giazitzis et al. 2025, _TinyML models for SoH estimation of lithium-ion
  batteries based on Electrochemical Impedance Spectroscopy_, Journal of Power Sources

---

## Roadmap

- [ ] **v1** — Reproduce LP-503562 baseline (target: MAE 0.87%, RMSE 1.20%)
- [ ] **v2** — Multi-dataset training (Zhang 2020 + NASA + Cassino LFP)
- [ ] **v3** — Physics-informed loss function, multi-chemistry generalisation

---

## Contributing

We welcome contributions from researchers, PhD students, and battery engineers.
See [CONTRIBUTING.md](CONTRIBUTING.md) for open problems and how to get involved.

For questions and discussion, use [GitHub Discussions](https://github.com/Mentha-ltd/battery-foundation-model/discussions).

---

## Links

- 🌐 Website: [menthaenergy.com](https://menthaenergy.com)
- 🤗 Hugging Face: [huggingface.co/mentha-ltd](https://huggingface.co/mentha-ltd)
- 📧 Contact: hello@menthaenergy.com

---

## Citation

If you use this repository in your research, please cite:

```bibtex
@article{giazitzis2025tinyml,
  title={TinyML models for SoH estimation of lithium-ion batteries based on
  Electrochemical Impedance Spectroscopy},
  author={Giazitzis, Spyridon and others},
  journal={Journal of Power Sources},
  volume={653},
  year={2025}
}
```

---

_Built by [Mentha Ltd](https://menthaenergy.com) — London, UK_
