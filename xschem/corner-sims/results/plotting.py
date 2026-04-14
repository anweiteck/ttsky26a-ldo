import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.cm as cm

# ── file paths ────────────────────────────────────────────────────────────────
LOADREG_CSV  = 'loadreg_raw.csv'      # time(s) vs vout(V)
VOUTSVIN_CSV = 'VoutvsVin_raw.csv'    # vin(V)  vs vout(V)

# ── load regulation settings ──────────────────────────────────────────────────
PULSE_START = 1e-3    # pulse on  at 1 ms
PULSE_END   = 2e-3    # pulse off at 2 ms
DELTA_I     = 49e-3   # 49 mA step

# V1 = steady state during pulse  (~1.5ms)
# V2 = steady state after pulse   (~2.5ms)
V1_START, V1_END = 1.4e-3, 1.8e-3
V2_START, V2_END = 2.4e-3, 2.8e-3

# vin value to sample vout at for statistics
VOUT_SAMPLE_VIN = 1.8   # V

# =============================================================================
# 1. VOUT vs VIN
# =============================================================================
def plot_voutsvin(filepath):
    df   = pd.read_csv(filepath, header=None, sep=r'\s+')
    x    = df.iloc[:, 0].values
    vout = df.iloc[:, 3].values

    boundaries = np.where(np.diff(x) < 0)[0] + 1
    boundaries = np.concatenate([[0], boundaries, [len(x)]])
    n_runs = len(boundaries) - 1

    fig, ax = plt.subplots(figsize=(9, 6))
    colors  = cm.plasma(np.linspace(0.1, 0.85, n_runs))

    vout_at_sample = []   # vout sampled at VOUT_SAMPLE_VIN for each run

    for i in range(n_runs):
        s, e = boundaries[i], boundaries[i+1]
        xi   = x[s:e]
        vi   = vout[s:e]
        ax.plot(xi, vi, color=colors[i], alpha=0.5, linewidth=0.9)

        # find closest vin point to VOUT_SAMPLE_VIN
        idx = np.argmin(np.abs(xi - VOUT_SAMPLE_VIN))
        vout_at_sample.append(vi[idx])

    # mark the sample point
    ax.axvline(VOUT_SAMPLE_VIN, color='white', linestyle='--',
               linewidth=1.0, alpha=0.7, label=f'Vin = {VOUT_SAMPLE_VIN} V (sample)')

    ax.set_xlabel('Vin (V)', fontsize=12)
    ax.set_ylabel('Vout (V)', fontsize=12)
    ax.set_title(f'Monte Carlo - Vout vs Vin ({n_runs} runs)', fontsize=13)
    ax.legend(fontsize=9)
    ax.grid(True, alpha=0.3)

    sm = plt.cm.ScalarMappable(cmap='plasma', norm=plt.Normalize(1, n_runs))
    sm.set_array([])
    plt.colorbar(sm, ax=ax, label='Run #')

    plt.tight_layout()
    plt.savefig('mc_voutsvin.png', dpi=150)
    plt.savefig('mc_voutsvin.pdf')
    print(f"Saved mc_voutsvin.png / .pdf  ({n_runs} runs)")
    plt.close()

    # ── vout statistics at sample vin ─────────────────────────────────────────
    vout_at_sample = np.array(vout_at_sample)
    print(f"\n{'-'*50}")
    print(f"  Vout Statistics at Vin = {VOUT_SAMPLE_VIN} V ({n_runs} runs)")
    print(f"{'-'*50}")
    print(f"  Mean:  {np.mean(vout_at_sample):.6f} V")
    print(f"  Std:   {np.std(vout_at_sample):.6f} V")
    print(f"  Min:   {np.min(vout_at_sample):.6f} V")
    print(f"  Max:   {np.max(vout_at_sample):.6f} V")
    print(f"{'-'*50}\n")

    # save to text file
    with open('voutsvin_results.txt', 'w', encoding='utf-8') as f:
        f.write("Monte Carlo Vout vs Vin Results\n")
        f.write(f"Vout sampled at Vin = {VOUT_SAMPLE_VIN} V\n\n")
        f.write(f"{'Run':<6} {'Vout @ Vin=1.8V (V)'}\n")
        f.write(f"{'-'*30}\n")
        for i, v in enumerate(vout_at_sample):
            f.write(f"{i+1:<6} {v:.6f}\n")
        f.write(f"\n{'-'*30}\n")
        f.write(f"{'Mean':<6} {np.mean(vout_at_sample):.6f}\n")
        f.write(f"{'Std':<6} {np.std(vout_at_sample):.6f}\n")
        f.write(f"{'Min':<6} {np.min(vout_at_sample):.6f}\n")
        f.write(f"{'Max':<6} {np.max(vout_at_sample):.6f}\n")
    print("Saved voutsvin_results.txt")

# =============================================================================
# 2. LOAD REGULATION
# =============================================================================
def plot_loadreg(filepath):
    df = pd.read_csv(filepath, header=None, sep=r'\s+')
    x  = df.iloc[:, 0].values
    v  = df.iloc[:, 1].values

    zeros      = np.where(x == 0)[0]
    boundaries = np.concatenate([zeros, [len(x)]])
    n_runs     = len(boundaries) - 1

    fig, ax = plt.subplots(figsize=(9, 6))
    colors  = cm.plasma(np.linspace(0.1, 0.85, n_runs))
    results = []   # (run_number, v1, v2, load_reg)

    for i in range(n_runs):
        s, e = boundaries[i], boundaries[i+1]
        t  = x[s:e]
        vr = v[s:e]

        # clip glitches for plotting
        mask = (vr > 0.5) & (vr < 2.0)
        ax.plot(t[mask] * 1e3, vr[mask], color=colors[i], alpha=0.4, linewidth=0.8)

        # load reg calculation
        m1 = (t >= V1_START) & (t <= V1_END)
        m2 = (t >= V2_START) & (t <= V2_END)
        if m1.sum() > 0 and m2.sum() > 0:
            v1 = np.mean(vr[m1])
            v2 = np.mean(vr[m2])
            lr = abs(v1 - v2) / DELTA_I * 1000   # mV/A, always positive
            results.append((i + 1, v1, v2, lr))
            print(f"Run {i+1:>3}: V1={v1:.6f} V   V2={v2:.6f} V   "
                  f"Load Reg={lr:.4f} mV/A")

    ax.axvspan(V1_START * 1e3, V1_END * 1e3,
               alpha=0.15, color='cyan', label='V1 ~1.5ms (during pulse)')
    ax.axvspan(V2_START * 1e3, V2_END * 1e3,
               alpha=0.15, color='lime', label='V2 ~2.5ms (after pulse)')
    ax.axvline(PULSE_START * 1e3, color='white', linestyle='--',
               linewidth=1.0, alpha=0.7, label='Pulse start/end')
    ax.axvline(PULSE_END   * 1e3, color='white', linestyle='--',
               linewidth=1.0, alpha=0.7)

    ax.set_xlabel('Time (ms)', fontsize=12)
    ax.set_ylabel('Vout (V)', fontsize=12)
    ax.set_title(f'Monte Carlo - Load Regulation ({n_runs} runs)', fontsize=13)
    ax.legend(fontsize=9)
    ax.grid(True, alpha=0.3)

    sm = plt.cm.ScalarMappable(cmap='plasma', norm=plt.Normalize(1, n_runs))
    sm.set_array([])
    plt.colorbar(sm, ax=ax, label='Run #')

    plt.tight_layout()
    plt.savefig('mc_loadreg.png', dpi=150)
    plt.savefig('mc_loadreg.pdf')
    print(f"\nSaved mc_loadreg.png / .pdf")
    plt.close()

    # ── summary stats ─────────────────────────────────────────────────────────
    lrs = np.array([r[3] for r in results])
    print(f"\n{'-'*45}")
    print(f"  Load Regulation Summary ({len(lrs)} runs)")
    print(f"{'-'*45}")
    print(f"  Mean:  {np.mean(lrs):.4f} mV/A")
    print(f"  Std:   {np.std(lrs):.4f} mV/A")
    print(f"  Min:   {np.min(lrs):.4f} mV/A")
    print(f"  Max:   {np.max(lrs):.4f} mV/A")
    print(f"{'-'*45}\n")

    # ── write results text file ───────────────────────────────────────────────
    with open('loadreg_results.txt', 'w', encoding='utf-8') as f:
        f.write("Monte Carlo Load Regulation Results\n")
        f.write(f"Formula: |V1 - V2| / {DELTA_I*1e3:.0f} mA  (result in mV/A)\n")
        f.write(f"V1 window: {V1_START*1e3:.1f} - {V1_END*1e3:.1f} ms  "
                f"(steady state during pulse)\n")
        f.write(f"V2 window: {V2_START*1e3:.1f} - {V2_END*1e3:.1f} ms  "
                f"(steady state after pulse)\n\n")
        f.write(f"{'Run':<6} {'V1 @ 1.5ms (V)':<18} {'V2 @ 2.5ms (V)':<18} "
                f"{'Load Reg (mV/A)'}\n")
        f.write(f"{'-'*60}\n")
        for run_num, v1, v2, lr in results:
            f.write(f"{run_num:<6} {v1:<18.6f} {v2:<18.6f} {lr:.4f}\n")
        f.write(f"\n{'-'*60}\n")
        f.write(f"{'Mean':<6} {'':<18} {'':<18} {np.mean(lrs):.4f}\n")
        f.write(f"{'Std':<6} {'':<18} {'':<18} {np.std(lrs):.4f}\n")
        f.write(f"{'Min':<6} {'':<18} {'':<18} {np.min(lrs):.4f}\n")
        f.write(f"{'Max':<6} {'':<18} {'':<18} {np.max(lrs):.4f}\n")

    print("Saved loadreg_results.txt")

# =============================================================================
# run both
# =============================================================================
if __name__ == '__main__':
    plot_voutsvin(VOUTSVIN_CSV)
    plot_loadreg(LOADREG_CSV)