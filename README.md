# Sequences
## A collection of Swift Iterators and Sequences

### UIColor

The `rainbowIterator` and `rainbowSequence` produce a sequence of UIColors. The algorithm uses a Sine wave to calculate the next UIColor in the sequence which creates a nice rainbow effect.

`let rainbow = UIColor.rainbowSequence()`

![Color Rainbow](https://raw.githubusercontent.com/cgoldsby/Sequences/master/Images/rainbow.png)

The color sequence can be adjusted by altering a set of input parameters:
* frequency: How fast the sine wave oscillates
* phases 1, 2, & 3: Three phases influencing the color output for red, green, and blue.
* amplitude: How high and low the sine wave reaches.
* center: The center position of the sine wave.
* repeat: Whether the color sequence should continue infintely.

For more information on altering the color in the sequence please refer to the article by Jim Bumgardner: [Making annoying rainbows in javascript](http://krazydad.com/tutorials/makecolors.php).

`let grays = UIColor.rainbowSequence(phase1: 0, phase2: 0, phase3: 0)`

![Gray Rainbow](https://raw.githubusercontent.com/cgoldsby/Sequences/master/Images/rainbow-grays.png)

`let pastels = UIColor.rainbowSequence(amplitude: 55, center: 200)`

![Pastels Rainbow](https://raw.githubusercontent.com/cgoldsby/Sequences/master/Images/rainbow-pastels.png)

```
// Sequences of UIColors with a phase shift of 10°
let phaseShifts: [AnySequence<UIColor>] = stride(from: 120, through: 0, by: -10).map {
    let phase = $0.radians
    return UIColor.rainbowSequence(phase1: 0, phase2: phase, phase3: phase * 2, repeat: true)
}
```
![Grid Rainbow](https://raw.githubusercontent.com/cgoldsby/Sequences/master/Images/rainbow-grid.png)


### Fibonacci

The `fibonacciIterator` iterates trough the Fibonacci sequence.

