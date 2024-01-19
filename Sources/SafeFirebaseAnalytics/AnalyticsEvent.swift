import Foundation
import FirebaseAnalytics

/// Represents predefined Firebase Analytics event names in a type-safe manner.
/// Each case corresponds to a Firebase Analytics event name.
public enum AnalyticsEvent: CaseIterable, Hashable, Codable {
    /// Ad Impression event. Signifies when a user sees an ad impression.
    case adImpression
    /// Add Payment Info event. Signifies that a user has submitted their payment information.
    case addPaymentInfo
    /// Add Shipping Info event. Signifies that a user has submitted their shipping information.
    case addShippingInfo
    /// E-Commerce Add To Cart event. Signifies that an item(s) was added to a cart for purchase.
    case addToCart
    /// E-Commerce Add To Wishlist event. Signifies that an item was added to a wishlist.
    case addToWishlist
    /// App Open event. Signifies when an App becomes active.
    case appOpen
    /// E-Commerce Begin Checkout event. Signifies that a user has begun the process of checking out.
    case beginCheckout
    /// Campaign Detail event. Supplies the referral details of a re-engagement campaign.
    case campaignDetails
    /// Earn Virtual Currency event. Tracks the awarding of virtual currency in your app.
    case earnVirtualCurrency
    /// Generate Lead event. Signifies when a lead has been generated in the app.
    case generateLead
    /// Join Group event. Signifies when a user joins a group such as a guild, team, or family.
    case joinGroup
    /// Level End event. Signifies when the user finishes a level.
    case levelEnd
    /// Level Start event. Signifies when the user starts a new level.
    case levelStart
    /// Level Up event. Signifies that a player has leveled up in your gaming app.
    case levelUp
    /// Login event. Signifies that a user has logged in.
    case login
    /// Post Score event. Signifies when the user posts a score in your gaming app.
    case postScore
    /// E-Commerce Purchase event. Signifies that an item(s) was purchased by a user.
    case purchase
    /// E-Commerce Refund event. Signifies that a refund was issued.
    case refund
    /// E-Commerce Remove from Cart event. Signifies that an item(s) was removed from a cart.
    case removeFromCart
    /// Screen View event. Signifies a screen view.
    case screenView
    /// Search event. Signifies when a user performs a search.
    case search
    /// Select Content event. Signifies that a user has selected some content of a certain type in an app.
    case selectContent
    /// Select Item event. Signifies that an item was selected by a user from a list.
    case selectItem
    /// Select promotion event. Signifies that a user has selected a promotion offer.
    case selectPromotion
    /// Share event. Signifies when a user shares content.
    case share
    /// Sign Up event. Signifies that a user has signed up for an account in your app.
    case signUp
    /// Spend Virtual Currency event. Tracks the sale of virtual goods in your app.
    case spendVirtualCurrency
    /// Tutorial Begin event. Signifies the start of the on-boarding process in your app.
    case tutorialBegin
    /// Tutorial End event. Signifies the completion of your app's on-boarding process.
    case tutorialComplete
    /// Unlock Achievement event. Signifies that a user has unlocked an achievement in your game.
    case unlockAchievement
    /// E-commerce View Cart event. Signifies that a user has viewed their cart.
    case viewCart
    /// View Item event. Signifies that a user has viewed an item.
    case viewItem
    /// View Item List event. Signifies that a user has seen a list of items or offerings.
    case viewItemList
    /// View Promotion event. Signifies that a promotion was shown to a user.
    case viewPromotion
    /// View Search Results event. Signifies that a user has been presented with the results of a search.
    case viewSearchResults

    /// The Firebase Analytics event name string.
    /// This property provides the corresponding event name for each AnalyticsEvent case.
    /// It is used to map the enum case to the actual event name string.
    public var name: String {
        switch self {
        case .adImpression:
            return AnalyticsEventAdImpression
        case .addPaymentInfo:
            return AnalyticsEventAddPaymentInfo
        case .addShippingInfo:
            return AnalyticsEventAddShippingInfo
        case .addToCart:
            return AnalyticsEventAddToCart
        case .addToWishlist:
            return AnalyticsEventAddToWishlist
        case .appOpen:
            return AnalyticsEventAppOpen
        case .beginCheckout:
            return AnalyticsEventBeginCheckout
        case .campaignDetails:
            return AnalyticsEventCampaignDetails
        case .earnVirtualCurrency:
            return AnalyticsEventEarnVirtualCurrency
        case .generateLead:
            return AnalyticsEventGenerateLead
        case .joinGroup:
            return AnalyticsEventJoinGroup
        case .levelEnd:
            return AnalyticsEventLevelEnd
        case .levelStart:
            return AnalyticsEventLevelStart
        case .levelUp:
            return AnalyticsEventLevelUp
        case .login:
            return AnalyticsEventLogin
        case .postScore:
            return AnalyticsEventPostScore
        case .purchase:
            return AnalyticsEventPurchase
        case .refund:
            return AnalyticsEventRefund
        case .removeFromCart:
            return AnalyticsEventRemoveFromCart
        case .screenView:
            return AnalyticsEventScreenView
        case .search:
            return AnalyticsEventSearch
        case .selectContent:
            return AnalyticsEventSelectContent
        case .selectItem:
            return AnalyticsEventSelectItem
        case .selectPromotion:
            return AnalyticsEventSelectPromotion
        case .share:
            return AnalyticsEventShare
        case .signUp:
            return AnalyticsEventSignUp
        case .spendVirtualCurrency:
            return AnalyticsEventSpendVirtualCurrency
        case .tutorialBegin:
            return AnalyticsEventTutorialBegin
        case .tutorialComplete:
            return AnalyticsEventTutorialComplete
        case .unlockAchievement:
            return AnalyticsEventUnlockAchievement
        case .viewCart:
            return AnalyticsEventViewCart
        case .viewItem:
            return AnalyticsEventViewItem
        case .viewItemList:
            return AnalyticsEventViewItemList
        case .viewPromotion:
            return AnalyticsEventViewPromotion
        case .viewSearchResults:
            return AnalyticsEventViewSearchResults
        }
    }
}
