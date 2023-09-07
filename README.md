# Jaden-Simple-Model
Purpose: Does an ecosystem that contains only the highest quality foods always support a large and stable population for a
species that relies on this resource? Specifically, do populations of great hammerhead sharks in temperate and tropical waters remain stable
in areas where only stingrays, octopus, and squid are present? How does food populations affect hammerhead shark populations?

Entities, state variables, and scales: This model has two entities, Hammerhead sharks and location. State variables are the amount
of stingrays, octopuses, and squids that are eaten in a 2-year time frame. A hammerhead eats about 2-3 pounds a day. The scale will be
on a temporal scale of 2 years since hammerheads reproduce once every 2 years, having 6-42 pups.

Process overview: The processes of the model will include how much the hammerhead sharks eat, reproduction, and how the population size of hammerhead sharks changes.

Design concepts: I want to address if shark populations remain large with only the highest quality food present. A model will be created to
see how the shark population changes when only their top food is present. Each shark will eat a random amount of food a day and will have
a random amount of pups every cycle (each within average range). The model will take into account natural death but does not take
into account eating each other since real hammerheads will occasionally do this.

Initialization: Abundant stingrays, octopus, and squid populations will be present when the model starts. There will be equal population levels
of each food type. There will be a school of hammerheads with 100 sharks, 50 females and 50 males.

Input data: The environment will remain constant.

Submodels: The eating submodel will be based on a range of a 2-3 pound daily intake of food. The reproduction model will be based on a range of 6-42 pups,
starting reproduction at the age of 5-9. The population size will start at 100 sharks and then change at reproduction and natural mortality occurs.
These sharks died around 44 years old and are typically only killed off by sickness or fishermen.
