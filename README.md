# Aerospace Control & Dynamics Practice (MATLAB)

MATLAB/Simulink exercises for aerospace applications: rigid-body rotations, quaternions, orbital mechanics, attitude control, NMPC, sliding-mode control, and state estimation.

Practice material organized by session/attempt folders (`*try*jul`, `*try*`, etc.), with shared libraries for reusable building blocks.

## Topics

- **Rotations & attitude** — DCM, Euler angles (e.g. 3-2-1), axis–angle, quaternions, kinematics/dynamics
- **Orbital mechanics** — position/velocity ↔ orbital elements, spacecraft dynamics (thrust, drag, mass), orbit plotting/animation
- **Attitude control** — PD / quaternion-based control, sliding-mode controllers for spacecraft
- **NMPC** — nonlinear model predictive control for satellites and wheeled rovers (prediction models + constraints)
- **Feedback linearization** — Lie derivatives / I/O FL helpers and Simulink blocks
- **Estimation** — EKF-oriented Simulink exercises
- **Misc. systems** — rover path following, launch/orbit control setups

## Repository structure

```
lib_rotations/     # Quaternion/DCM/Euler utilities, attitude Simulink models
lib_aerospace/     # Orbit & spacecraft dynamics, Earth/orbit visualization
lib_nmpc/          # NMPC design templates and Simulink NMPC blocks
lib_fl/            # Feedback-linearization helpers and blocks
*/ex*.m            # Exercise scripts (by practice session)
*/ex*.slx          # Matching Simulink models (when used)
*/pred*.m          # NMPC prediction models
*/n*con*.m         # Nonlinear constraint functions for NMPC
Practice/          # Extra practice scripts
```

Session folders (e.g. `1try15jul`, `2tryjul16`, `3tryjul16`) are iterative practice runs on the same themes rather than a single numbered curriculum.

## Requirements

- **MATLAB** (recent release recommended; some models are versioned, e.g. `*_2023a`, `*_2025a`, `*_2025b`)
- **Simulink**
- Toolboxes commonly needed for these exercises:
  - Optimization Toolbox (NMPC)
  - Symbolic Math Toolbox (selected scripts)
  - Aerospace / Control-related toolboxes if used by your MATLAB install for specific blocks

Add the library folders to the MATLAB path before running exercises:

```matlab
addpath(genpath('lib_rotations'))
addpath(genpath('lib_aerospace'))
addpath(genpath('lib_nmpc'))
addpath(genpath('lib_fl'))
```

Or use **Home → Set Path → Add with Subfolders** for each `lib_*` directory.

## How to run an exercise

1. Open MATLAB in the session folder that contains the script (or `cd` there).
2. Ensure the `lib_*` folders are on the path.
3. Run the script, e.g. `ex4` — many scripts call `open(...)` / `sim(...)` on a paired `.slx` model.
4. For NMPC scripts, prediction models (`predsat*.m`, `predrover*.m`) and optional nonlinear constraints (`nlcon*.m`, `ncon*.m`) must be on the path next to the script.

Example pattern (NMPC spacecraft):

```matlab
% Plant globals / initial state ...
par.model = @predsat416;
par.nlc = 0;   % or @nlcon...
par.n = 7; par.Ts = 10; par.Tp = 50;
% weights, bounds ...
K = nmpc_design_st2(par);
open('ex4impnmpc.slx'); sim('ex4impnmpc');
```

## Libraries (quick reference)

| Library | Role |
|---------|------|
| `lib_rotations` | `quatprod`, `qua2dcm`, `euler2qua`, `kin_quat`, `dyn_kin_quat`, attitude animation, etc. |
| `lib_aerospace` | `rv2oe` / `oe2rv`, `spacecraft_dynamics`, `orbit_plot`, `orbit_animation` |
| `lib_nmpc` | `nmpc_design_template`, `pred_model_template`, `nlcon_template`, NMPC Simulink blocks |
| `lib_fl` | `lieder`, `io_fl`, `ref_gen`, FL Simulink blocks |

## Notes

- Scripts are exam/practice style: short, problem-focused, not a polished package API.
- Some `.p` files in `lib_nmpc` are protected MATLAB code used by the NMPC design workflow.
- Prefer not committing Simulink caches (`slprj/`, `*.slxc`), autosaves (`*.asv`, `*.autosave`), or `__MACOSX/` junk from zip extracts.

## Author

Esteban — aerospace dynamics & control practice in MATLAB/Simulink.
Politecnico di Torino, Libraries for nonlinear control and aerospace applications
