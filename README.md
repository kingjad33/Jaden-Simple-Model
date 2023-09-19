# Jaden-Simple-Model
Purpose: Does an ecosystem that contains only the highest quality foods always support a large and stable population for a
species that relies on this resource? Specifically, do populations of great hammerhead sharks in temperate and tropical waters remain stable
in areas where only stingrays, octopus, and squid are present? How do food populations affect hammerhead shark populations?

Entities, state variables, and scales: This model has two entities, Hammerhead sharks and location. State variables are the amount
of stingrays, octopuses, and squids that are eaten in a 2-year time frame. A hammerhead eats about 2-3 pounds a day. The scale will be
on a temporal scale of 1 day.

Process overview: The processes of the model will include how much the hammerhead sharks eat, reproduction, and how the population size of hammerhead sharks changes.

Design concepts: I want to address if shark populations remain large with only the highest quality food present. A model will be created to
see how the shark population changes when only their top food is present. Each shark will eat a random amount of food a day and will have
a random amount of pups every cycle (each within average range). The model will take into account natural death but does not take
into account eating each other since real hammerheads will occasionally do this.

Initialization: Abundant stingrays, octopus, and squid populations will be present when the model starts. There will be equal population levels
of each food type. There will be a school of hammerheads with 200 sharks, 100 females and 100 males.

Input data: The environment will remain constant.

Submodels: The eating submodel will be based on a range of time. The population size will remain at 200 sharks.
