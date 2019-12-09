//Solution goes in Sources
import Foundation
/**
 Earth: orbital period 365.25 Earth days, or 31557600 seconds
 - Mercury: orbital period 0.2408467 Earth years
 - Venus: orbital period 0.61519726 Earth years
 - Mars: orbital period 1.8808158 Earth years
 - Jupiter: orbital period 11.862615 Earth years
 - Saturn: orbital period 29.447498 Earth years
 - Uranus: orbital period 84.016846 Earth years
 - Neptune: orbital period 164.79132 Earth years
 */

struct SpaceAge {
    static let earthOrbitalPeriod = TimeInterval(31557600)
    static let mercuryOrbitalPeriod = 0.2408467 * SpaceAge.earthOrbitalPeriod
    static let venusOrbitalPeriod = 0.61519726 * SpaceAge.earthOrbitalPeriod
    static let marsOrbitalPeriod = 1.8808158 * SpaceAge.earthOrbitalPeriod
    static let jupiterOrbitalPeriod = 11.862615 * SpaceAge.earthOrbitalPeriod
    static let saturnOrbitalPeriod = 29.447498 * SpaceAge.earthOrbitalPeriod
    static let uranusOrbitalPeriod = 84.016846 * SpaceAge.earthOrbitalPeriod
    static let neptuneOrbitalPeriod = 164.79132 * SpaceAge.earthOrbitalPeriod

    let seconds : TimeInterval

    var onEarth :Double {
        return seconds/SpaceAge.earthOrbitalPeriod
    }

    var onMercury :Double{
        return seconds/SpaceAge.mercuryOrbitalPeriod
    }

    var onVenus :Double {
        return seconds/SpaceAge.venusOrbitalPeriod
    }

    var onMars : Double {
        return seconds/SpaceAge.marsOrbitalPeriod
    }

    var onJupiter : Double {
        return seconds/SpaceAge.jupiterOrbitalPeriod
    }

    var onSaturn : Double {
        return seconds/SpaceAge.saturnOrbitalPeriod
    }

    var onUranus : Double {
        return seconds/SpaceAge.uranusOrbitalPeriod
    }

    var onNeptune : Double {
        return seconds/SpaceAge.neptuneOrbitalPeriod
    }

    init(_ seconds:UInt) {
        self.seconds = TimeInterval(seconds)
    }
}
