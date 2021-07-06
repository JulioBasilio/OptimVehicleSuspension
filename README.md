# OptimVehicleSuspension

**OptimVehicleSuspension - Optimizing vehicle suspension** This code performs an optimization by Genetic Algorithm in a vehicle suspension considering the comfort and safety of the user. The input simulation was used an irregular road profile.
The code is structured in 4 files:
- **Entrada.m**: which is used to randomly get the rough road profile input signal;
- **Otimiza.m**: which is the main file that performs simulation and optimization by genetic algorithm; 
- **Funcoes_Objetivo.m**: which is the function that calculates the simulations with the input of the road profile to the system and results in the dynamic responses that will be used in the optimization objective function;
- **Calcula_Respostas.m**: which is the function that defines and calculates the objective function that will be used in the optimization by Genetic Algorithm.

The current stable version of **OptimVehicleSuspension** is available on GitHub:

https://github.com/JulioBasilio/OptimVehicleSuspension

This code includes the following files:

- Entrada.m
- Otimiza.m 
- Funcoes_Objetivo.m
- Calcula_Respostas.m

## Tutorial

- Step 1: Save all 4 files in a single folder.

- Step 2: Run the file Input.m to get the input signal of the irregular road profile.

- Step 3: run the Optimiza.m file to obtain the optimization results by Genetic Algorithm.

## Octave/Matlab compatibility

**OptimVehicleSuspension** was developed to be 100% compatible with the Octave and Matlab platforms.

## Citing OptimVehicleSuspension

We ask users to cite the following manual in any publications reporting work done with **OptimVehicleSuspension**:
- Basilio, J. C. C. OptimVehicleSuspension - Optimizing vehicle suspension, 2021.

```
@misc{OptimVehicleSuspension,
   author       = {J. {Basilio}},
   title        = { {OptimVehicleSuspension} - {O}ptimizing {V}ehicle {S}uspension},
   year         = {2021},
   publisher    = {GitHub},
   journal      = {GitHub repository},
}
```

## License

**OptimVehicleSuspension** is released under the MIT license. See the LICENSE file for details. All new contributions must be made under the MIT license.

## Funding

<img src="logo/capes.png" width="10%">

## Institutional support

<img src="logo/uerj_logo_cor.jpg" width="13%"> &nbsp; &nbsp; 

## Contact

Contributions to the software, reports problems or support can be done via email basilio.julio@posgraduacao.uerj.br
