import Foundation
import FirebaseAnalytics

public extension Analytics {
    /// Logs an app event. The event can have up to 25 parameters. Events with the same name must have the same parameters. Up to 500 event names are supported. Using predefined events and/or parameters is recommended for optimal reporting.
    ///
    /// The following event names are reserved and cannot be used:
    ///
    /// - Parameters:
    ///   - name: The name of the event. Should contain 1 to 40 alphanumeric characters or underscores. The name must start with an alphabetic character. Some event names are reserved. See FIREventNames.h for the list of reserved event names. The “firebase_”, “google_”, and “ga_” prefixes are reserved and should not be used. Note that event names are case-sensitive and that logging two events whose names differ only in case will result in two distinct events. To manually log screen view events, use the screen_view event name.
    ///   - parameters: The dictionary of event parameters. Passing nil indicates that the event has no parameters. Parameter names can be up to 40 characters long and must start with an alphabetic character and contain only alphanumeric characters and underscores. Only String, Int, and Double parameter types are supported. String parameter values can be up to 100 characters long for standard Google Analytics properties, and up to 500 characters long for Google Analytics 360 properties. The “firebase_”, “google_”, and “ga_” prefixes are reserved and should not be used for parameter names.
    class func logEvent(
        _ name: AnalyticsEvent,
        parameters: [AnalyticsParameter : Any]?
    ) {
        logEvent(
            name.name,
            parameters: parameters?
                .mapKeys(\.name)
                .compactMapValues { $0 as? NSObject }
        )
    }

    /// Logs an app event. The event can have up to 25 parameters. Events with the same name must have the same parameters. Up to 500 event names are supported. Using predefined events and/or parameters is recommended for optimal reporting.
    ///
    /// The following event names are reserved and cannot be used:
    ///
    /// - Parameters:
    ///   - name: The name of the event. Should contain 1 to 40 alphanumeric characters or underscores. The name must start with an alphabetic character. Some event names are reserved. See FIREventNames.h for the list of reserved event names. The “firebase_”, “google_”, and “ga_” prefixes are reserved and should not be used. Note that event names are case-sensitive and that logging two events whose names differ only in case will result in two distinct events. To manually log screen view events, use the screen_view event name.
    ///   - parameters: The dictionary of event parameters. Passing nil indicates that the event has no parameters. Parameter names can be up to 40 characters long and must start with an alphabetic character and contain only alphanumeric characters and underscores. Only String, Int, and Double parameter types are supported. String parameter values can be up to 100 characters long for standard Google Analytics properties, and up to 500 characters long for Google Analytics 360 properties. The “firebase_”, “google_”, and “ga_” prefixes are reserved and should not be used for parameter names.
    @_disfavoredOverload
    class func logEvent(
        _ name: AnalyticsEvent,
        parameters: [String : Any]?
    ) {
        logEvent(
            name.name,
            parameters: parameters
        )
    }

    /// Logs an app event. The event can have up to 25 parameters. Events with the same name must have the same parameters. Up to 500 event names are supported. Using predefined events and/or parameters is recommended for optimal reporting.
    ///
    /// The following event names are reserved and cannot be used:
    ///
    /// - Parameters:
    ///   - name: The name of the event. Should contain 1 to 40 alphanumeric characters or underscores. The name must start with an alphabetic character. Some event names are reserved. See FIREventNames.h for the list of reserved event names. The “firebase_”, “google_”, and “ga_” prefixes are reserved and should not be used. Note that event names are case-sensitive and that logging two events whose names differ only in case will result in two distinct events. To manually log screen view events, use the screen_view event name.
    ///   - parameters: The dictionary of event parameters. Passing nil indicates that the event has no parameters. Parameter names can be up to 40 characters long and must start with an alphabetic character and contain only alphanumeric characters and underscores. Only String, Int, and Double parameter types are supported. String parameter values can be up to 100 characters long for standard Google Analytics properties, and up to 500 characters long for Google Analytics 360 properties. The “firebase_”, “google_”, and “ga_” prefixes are reserved and should not be used for parameter names.
    @_disfavoredOverload
    class func logEvent(
        _ name: String,
        parameters: [AnalyticsParameter : Any]?
    ) {
        logEvent(
            name,
            parameters: parameters?
                .mapKeys(\.name)
                .compactMapValues { $0 as? NSObject }
        )
    }
}

extension Dictionary {
    func mapKeys<Transformed>(
        _ transform: (Key) throws -> Transformed
    ) rethrows -> [Transformed: Value] {
        .init(
            uniqueKeysWithValues: try map { (try transform($0.key), $0.value) }
        )
    }
}
