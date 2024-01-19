import FirebaseAnalytics

/// Represents predefined Firebase Analytics event parameters in a type-safe manner.
/// Each case corresponds to a Firebase Analytics parameter name.
public enum AnalyticsParameter: Hashable, CaseIterable, Codable {
    /// Game achievement ID (String).
    case achievementID
    /// The ad format (e.g. Banner, Interstitial, Rewarded, Native, Rewarded Interstitial, Instream) (String).
    case adFormat
    /// Ad Network Click ID (String). Used for network-specific click IDs which vary in format.
    case adNetworkClickID
    /// The ad platform (e.g. MoPub, IronSource) (String).
    case adPlatform
    /// The ad source (e.g. AdColony) (String).
    case adSource
    /// The ad unit name (e.g. Banner_03) (String).
    case adUnitName
    /// A product affiliation to designate a supplying company or brick and mortar store location (String).
    case affiliation
    /// Campaign custom parameter (String). Used as a method of capturing custom data in a campaign. Use varies by network.
    case CP1
    /// The individual campaign name, slogan, promo code, etc. Some networks have pre-defined macro to capture campaign information, otherwise can be populated by developer. Highly Recommended (String).
    case campaign
    /// Campaign ID (String). Used for keyword analysis to identify a specific product promotion or strategic campaign. This is a required key for GA4 data import.
    case campaignID
    /// Character used in game (String).
    case character
    /// Campaign content (String).
    case content
    /// Type of content selected (String).
    case contentType
    /// Coupon code used for a purchase (String).
    case coupon
    /// Creative Format (String). Used to identify the high-level classification of the type of ad served by a specific campaign.
    case creativeFormat
    /// The name of a creative used in a promotional spot (String).
    case creativeName
    /// The name of a creative slot (String).
    case creativeSlot
    /// Currency of the purchase or items associated with the event, in 3-letter ISO_4217 format (String).
    case currency
    /// Flight or Travel destination (String).
    case destination
    /// Monetary value of discount associated with a purchase (Double).
    case discount
    /// The arrival date, check-out date or rental end date for the item. This should be in YYYY-MM-DD format (String).
    case endDate
    /// Indicates that the associated event should either extend the current session or start a new session if no session was active when the event was logged. Specify 1 to extend the current session or to start a new session; any other value will not extend or start a session.
    case extendSession
    /// Flight number for travel events (String).
    case flightNumber
    /// Group/clan/guild ID (String).
    case groupID
    /// The index of the item in a list (Int).
    case index
    /// Item brand (String).
    case itemBrand
    /// Item category (context-specific) (String).
    case itemCategory
    /// Item Category (context-specific) (String).
    case itemCategory2
    /// Item Category (context-specific) (String).
    case itemCategory3
    /// Item Category (context-specific) (String).
    case itemCategory4
    /// Item Category (context-specific) (String).
    case itemCategory5
    /// Item ID (context-specific) (String).
    case itemID
    /// The ID of the list in which the item was presented to the user (String).
    case itemListID
    /// The name of the list in which the item was presented to the user (String).
    case itemListName
    /// Item Name (context-specific) (String).
    case itemName
    /// Item variant (String).
    case itemVariant
    /// The list of items involved in the transaction expressed as `[[String: Any]]`.
    case items
    /// Level in game (Int).
    case level
    /// The name of a level in a game (String).
    case levelName
    /// Location (String). The Google Place ID that corresponds to the associated event. Alternatively, you can supply your own custom Location ID.
    case location
    /// The location associated with the event. Preferred to be the Google Place ID that corresponds to the associated item but could be overridden to a custom location ID string (String).
    case locationID
    /// Marketing Tactic (String). Used to identify the targeting criteria applied to a specific campaign.
    case marketingTactic
    /// The advertising or marketing medium, for example: cpc, banner, email, push. Highly recommended (String).
    case medium
    /// A particular approach used in an operation; for example, "facebook" or "email" in the context of a sign_up or login event. (String).
    case method
    /// Number of nights staying at hotel (Int).
    case numberOfNights
    /// Number of passengers traveling (Int).
    case numberOfPassengers
    /// Number of rooms for travel events (Int).
    case numberOfRooms
    /// Flight or Travel origin (String).
    case origin
    /// The chosen method of payment (String).
    case paymentType
    /// Purchase price (Double).
    case price
    /// The ID of a product promotion (String).
    case promotionID
    /// The name of a product promotion (String).
    case promotionName
    /// Purchase quantity (Int).
    case quantity
    /// Score in game (Int).
    case score
    /// Current screen class, such as the class name of the UIViewController, logged with screen_view event and added to every event (String).
    case screenClass
    /// Current screen name, such as the name of the UIViewController, logged with screen_view event and added to every event (String).
    case screenName
    /// The search string/keywords used (String).
    case searchTerm
    /// Shipping cost associated with a transaction (Double).
    case shipping
    /// The shipping tier (e.g. Ground, Air, Next-day) selected for delivery of the purchased item (String).
    case shippingTier
    /// The origin of your traffic, such as an Ad network (for example, google) or partner (urban airship). Identify the advertiser, site, publication, etc. that is sending traffic to your property. Highly recommended (String).
    case source
    /// Source Platform (String). Used to identify the platform responsible for directing traffic to a given Analytics property (e.g., a buying platform where budgets, targeting criteria, etc. are set, a platform for managing organic traffic data, etc.).
    case sourcePlatform
    /// The departure date, check-in date or rental start date for the item. This should be in YYYY-MM-DD format (String).
    case startDate
    /// The result of an operation. Specify 1 to indicate success and 0 to indicate failure (Int).
    case success
    /// Tax cost associated with a transaction (Double).
    case tax
    /// If you're manually tagging keyword campaigns, you should use utm_term to specify the keyword (String).
    case term
    /// The unique identifier of a transaction (String).
    case transactionID
    /// Travel class (String).
    case travelClass
    /// A context-specific numeric value which is accumulated automatically for each event type. This is a general purpose parameter that is useful for accumulating a key metric that pertains to an event. Examples include revenue, distance, time and points. Value should be specified as Int or Double.
    case value
    /// Name of virtual currency type (String).
    case virtualCurrencyName

    /// The Firebase Analytics parameter name string.
    /// This property provides the corresponding parameter name for each AnalyticsParameter case.
    /// It is used to map the enum case to the actual parameter name string used in Firebase Analytics events.
    public var name: String {
        switch self {
        case .achievementID:
            return AnalyticsParameterAchievementID
        case .adFormat:
            return AnalyticsParameterAdFormat
        case .adNetworkClickID:
            return AnalyticsParameterAdNetworkClickID
        case .adPlatform:
            return AnalyticsParameterAdPlatform
        case .adSource:
            return AnalyticsParameterAdSource
        case .adUnitName:
            return AnalyticsParameterAdUnitName
        case .affiliation:
            return AnalyticsParameterAffiliation
        case .CP1:
            return AnalyticsParameterCP1
        case .campaign:
            return AnalyticsParameterCampaign
        case .campaignID:
            return AnalyticsParameterCampaignID
        case .character:
            return AnalyticsParameterCharacter
        case .content:
            return AnalyticsParameterContent
        case .contentType:
            return AnalyticsParameterContentType
        case .coupon:
            return AnalyticsParameterCoupon
        case .creativeFormat:
            return AnalyticsParameterCreativeFormat
        case .creativeName:
            return AnalyticsParameterCreativeName
        case .creativeSlot:
            return AnalyticsParameterCreativeSlot
        case .currency:
            return AnalyticsParameterCurrency
        case .destination:
            return AnalyticsParameterDestination
        case .discount:
            return AnalyticsParameterDiscount
        case .endDate:
            return AnalyticsParameterEndDate
        case .extendSession:
            return AnalyticsParameterExtendSession
        case .flightNumber:
            return AnalyticsParameterFlightNumber
        case .groupID:
            return AnalyticsParameterGroupID
        case .index:
            return AnalyticsParameterIndex
        case .itemBrand:
            return AnalyticsParameterItemBrand
        case .itemCategory:
            return AnalyticsParameterItemCategory
        case .itemCategory2:
            return AnalyticsParameterItemCategory2
        case .itemCategory3:
            return AnalyticsParameterItemCategory3
        case .itemCategory4:
            return AnalyticsParameterItemCategory4
        case .itemCategory5:
            return AnalyticsParameterItemCategory5
        case .itemID:
            return AnalyticsParameterItemID
        case .itemListID:
            return AnalyticsParameterItemListID
        case .itemListName:
            return AnalyticsParameterItemListName
        case .itemName:
            return AnalyticsParameterItemName
        case .itemVariant:
            return AnalyticsParameterItemVariant
        case .items:
            return AnalyticsParameterItems
        case .level:
            return AnalyticsParameterLevel
        case .levelName:
            return AnalyticsParameterLevelName
        case .location:
            return AnalyticsParameterLocation
        case .locationID:
            return AnalyticsParameterLocationID
        case .marketingTactic:
            return AnalyticsParameterMarketingTactic
        case .medium:
            return AnalyticsParameterMedium
        case .method:
            return AnalyticsParameterMethod
        case .numberOfNights:
            return AnalyticsParameterNumberOfNights
        case .numberOfPassengers:
            return AnalyticsParameterNumberOfPassengers
        case .numberOfRooms:
            return AnalyticsParameterNumberOfRooms
        case .origin:
            return AnalyticsParameterOrigin
        case .paymentType:
            return AnalyticsParameterPaymentType
        case .price:
            return AnalyticsParameterPrice
        case .promotionID:
            return AnalyticsParameterPromotionID
        case .promotionName:
            return AnalyticsParameterPromotionName
        case .quantity:
            return AnalyticsParameterQuantity
        case .score:
            return AnalyticsParameterScore
        case .screenClass:
            return AnalyticsParameterScreenClass
        case .screenName:
            return AnalyticsParameterScreenName
        case .searchTerm:
            return AnalyticsParameterSearchTerm
        case .shipping:
            return AnalyticsParameterShipping
        case .shippingTier:
            return AnalyticsParameterShippingTier
        case .source:
            return AnalyticsParameterSource
        case .sourcePlatform:
            return AnalyticsParameterSourcePlatform
        case .startDate:
            return AnalyticsParameterStartDate
        case .success:
            return AnalyticsParameterSuccess
        case .tax:
            return AnalyticsParameterTax
        case .term:
            return AnalyticsParameterTerm
        case .transactionID:
            return AnalyticsParameterTransactionID
        case .travelClass:
            return AnalyticsParameterTravelClass
        case .value:
            return AnalyticsParameterValue
        case .virtualCurrencyName:
            return AnalyticsParameterVirtualCurrencyName
        }
    }
}
