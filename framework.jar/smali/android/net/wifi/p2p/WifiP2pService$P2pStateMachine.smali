.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private isCmdUpdateChannelListDefered:Z

.field private mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

.field private mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

.field private mGoEnteringUserAuthorizingJoinState:Z

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

.field private final mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

.field private mLegacyWpsRunning:Z

.field private mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

.field private mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

.field private mP2pPersistentAutoConnect:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private final mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

.field private mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

.field private mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "p2pSupported"    # Z

    .prologue
    const/4 v3, 0x0

    .line 679
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    .line 680
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 616
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    .line 617
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    .line 618
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    .line 619
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    .line 620
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    .line 621
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    .line 623
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    .line 624
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    .line 625
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    .line 627
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    .line 629
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    .line 630
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    .line 632
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pPersistentAutoConnect:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;

    .line 634
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    .line 636
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    .line 637
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    .line 638
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    .line 640
    new-instance v0, Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 641
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 643
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 652
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 653
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 663
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 665
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mLegacyWpsRunning:Z

    .line 666
    iput-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGoEnteringUserAuthorizingJoinState:Z

    .line 674
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 682
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 683
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 684
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 685
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 686
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 687
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 688
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 689
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 690
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 691
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 692
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 693
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 695
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pPersistentAutoConnect:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 697
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 698
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 699
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 700
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 702
    if-eqz p3, :cond_0

    .line 703
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 707
    :goto_0
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setLogRecSize(I)V

    .line 708
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setLogOnlyTransitions(Z)V

    .line 709
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method static synthetic access$11600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    return-object v0
.end method

.method static synthetic access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 614
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistentAutoConnectNetId(Landroid/net/wifi/p2p/WifiP2pConfig;)I

    move-result v0

    return v0
.end method

.method static synthetic access$12700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    return-void
.end method

.method static synthetic access$13000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$13400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$13900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGoEnteringUserAuthorizingJoinState:Z

    return v0
.end method

.method static synthetic access$13902(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGoEnteringUserAuthorizingJoinState:Z

    return p1
.end method

.method static synthetic access$14000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$14100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$14300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mLegacyWpsRunning:Z

    return v0
.end method

.method static synthetic access$14302(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mLegacyWpsRunning:Z

    return p1
.end method

.method static synthetic access$14400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getLegacyClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    return-object v0
.end method

.method static synthetic access$14600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupRemoved()V

    return-void
.end method

.method static synthetic access$14800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyP2pDisconnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$15700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->resetWifiP2pInfo()V

    return-void
.end method

.method static synthetic access$16000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 614
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z

    return v0
.end method

.method static synthetic access$3802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isCmdUpdateChannelListDefered:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    return-void
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 614
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$6100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$6802(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 614
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyDisconnectWifiConnection(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setTheBestChannel()V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pPersistentAutoConnect:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pPersistentAutoConnect;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->cleanUpP2pNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 614
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4241
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientDeadChannels()V

    .line 4242
    invoke-direct {p0, p1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 4243
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 4256
    :cond_0
    :goto_0
    return v1

    .line 4247
    :cond_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4251
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4252
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4256
    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "stringId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3272
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900c9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3274
    .local v1, "row":Landroid/view/View;
    const v2, 0x102038d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3275
    const v2, 0x10202ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3277
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    const/4 v1, 0x1

    .line 4165
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientDeadChannels()V

    .line 4166
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 4167
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 4168
    const/4 v1, 0x0

    .line 4181
    :cond_0
    :goto_0
    return v1

    .line 4171
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # ++operator for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16904(Landroid/net/wifi/p2p/WifiP2pService;)B

    .line 4173
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16900(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # ++operator for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16904(Landroid/net/wifi/p2p/WifiP2pService;)B

    .line 4174
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16900(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    .line 4175
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$16900(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4177
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4181
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v1

    goto :goto_0
.end method

.method private cleanUpP2pNetwork(Ljava/lang/String;)V
    .locals 10
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3135
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v5

    .line 3137
    .local v5, "listStr":Ljava/lang/String;
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3138
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3139
    .local v1, "deviceName":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_0

    if-nez v1, :cond_2

    .line 3166
    :cond_0
    :goto_1
    return-void

    .line 3138
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3141
    .restart local v1    # "deviceName":Ljava/lang/String;
    :cond_2
    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3142
    .local v4, "lines":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3145
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    array-length v8, v4

    if-ge v3, v8, :cond_0

    .line 3146
    aget-object v8, v4, v3

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3147
    .local v7, "result":[Ljava/lang/String;
    if-eqz v7, :cond_3

    array-length v8, v7

    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    .line 3145
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3151
    :cond_4
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    aget-object v8, v7, v8

    const-string v9, "any"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3153
    const/4 v6, -0x1

    .line 3154
    .local v6, "netId":I
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3155
    if-ltz v6, :cond_3

    .line 3156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clean up P2p Network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3157
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3160
    :catch_0
    move-exception v2

    .line 3161
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3
.end method

.method private clearClientDeadChannels()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4331
    .local v1, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 4332
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 4333
    .local v5, "msg":Landroid/os/Message;
    const v6, 0x22031

    iput v6, v5, Landroid/os/Message;->what:I

    .line 4334
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 4335
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 4336
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4338
    :try_start_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4339
    :catch_0
    move-exception v2

    .line 4340
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "detect dead channel"

    invoke-virtual {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4341
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4345
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 4346
    .local v4, "m":Landroid/os/Messenger;
    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    goto :goto_1

    .line 4348
    .end local v4    # "m":Landroid/os/Messenger;
    :cond_1
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4292
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    .line 4293
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    .line 4294
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4275
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 4276
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 4289
    :cond_0
    :goto_0
    return-void

    .line 4280
    :cond_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 4281
    .local v2, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    goto :goto_1

    .line 4284
    .end local v2    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_2
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 4285
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 4286
    const-string/jumbo v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4287
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 4217
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 4218
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 4238
    :cond_0
    :goto_0
    return-void

    .line 4222
    :cond_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4226
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 4228
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4229
    const-string/jumbo v1, "remove channel information from framework"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4230
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4237
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0
.end method

.method private clearSupplicantServiceRequest()V
    .locals 2

    .prologue
    .line 4155
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4159
    :goto_0
    return-void

    .line 4157
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    .line 4158
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$7702(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3561
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    .line 3562
    .local v0, "gc":I
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 3563
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    return-object v1
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "createIfNotExist"    # Z

    .prologue
    .line 4358
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 4360
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 4361
    const-string v1, "add a new client"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4362
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .end local v0    # "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    .line 4363
    .restart local v0    # "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4366
    :cond_0
    return-object v0
.end method

.method private getClientList(I)[Ljava/lang/String;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 3689
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v2, "p2p_client_list"

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3690
    .local v0, "p2pClients":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3691
    const/4 v1, 0x0

    .line 3693
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3832
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3833
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 3834
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 3837
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 3822
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3823
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 3824
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3827
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getLegacyClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 3088
    const-string v0, "Unknown"

    return-object v0
.end method

.method private getNetworkIdFromClientList(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 3667
    if-nez p1, :cond_1

    move v7, v9

    .line 3680
    :cond_0
    :goto_0
    return v7

    .line 3669
    :cond_1
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    .line 3670
    .local v3, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 3671
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v7

    .line 3672
    .local v7, "netId":I
    invoke-direct {p0, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v8

    .line 3673
    .local v8, "p2pClientList":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 3674
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 3675
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3674
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "netId":I
    .end local v8    # "p2pClientList":[Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 3680
    goto :goto_0
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 3842
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3844
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3847
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3850
    .local v1, "id":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3851
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3857
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 3853
    .restart local v0    # "deviceName":Ljava/lang/String;
    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPersistentAutoConnectNetId(Landroid/net/wifi/p2p/WifiP2pConfig;)I
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3101
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3102
    .local v0, "currSSID":Ljava/lang/String;
    const/4 v2, -0x1

    .line 3103
    .local v2, "netId":I
    if-eqz v0, :cond_0

    .line 3104
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3106
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 3107
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 3108
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3109
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v5, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3114
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    return v2
.end method

.method private getPersistentNetworkName(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 3119
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3120
    .local v0, "currSSID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3121
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3122
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pListFromWifiScan:Ljava/util/List;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 3123
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3124
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 3125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found Network Name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3131
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-object v0
.end method

.method private handleGroupCreationFailure()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3997
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->resetWifiP2pInfo()V

    .line 3998
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$3500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    .line 4002
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 4005
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v0

    .line 4008
    .local v0, "peersChanged":Z
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4009
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4010
    const/4 v0, 0x1

    .line 4014
    :cond_0
    if-eqz v0, :cond_1

    .line 4015
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 4018
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 4019
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$7702(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 4021
    const v1, 0x22001

    invoke-virtual {p0, v1, v4, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4023
    return-void
.end method

.method private handleGroupRemoved()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 4027
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v1

    .line 4028
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    const/4 v4, 0x0

    .line 4029
    .local v4, "peersChanged":Z
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4030
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v5, v8, :cond_0

    .line 4032
    :cond_1
    iput v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 4033
    const/4 v4, 0x1

    goto :goto_0

    .line 4038
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_2
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4039
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer(Ljava/lang/String;)V

    .line 4048
    :goto_1
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4052
    :goto_2
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 4056
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 4060
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4061
    .restart local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    .line 4041
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    const-string/jumbo v5, "stop DHCP client"

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4042
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    const v6, 0x30002

    invoke-virtual {v5, v6}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4043
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 4044
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v5, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$11302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto :goto_1

    .line 4049
    :catch_0
    move-exception v2

    .line 4050
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to clear addresses "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 4063
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    .line 4064
    :cond_6
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v4, 0x1

    .line 4065
    :cond_7
    if-eqz v4, :cond_8

    .line 4066
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 4069
    :cond_8
    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 4070
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 4071
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v5, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$7702(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 4073
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$13600(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 4074
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x2300c

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4075
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z
    invoke-static {v5, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$13602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 4077
    :cond_9
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3899
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 3900
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3901
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 3903
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 3904
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 3907
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v7, "virtual_push_button physical_display keypad"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 3909
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v7, "sta"

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    .line 3911
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 3912
    invoke-direct {p0, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    .line 3913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3915
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3916
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 3917
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->p2pServiceFlush()Z

    .line 3918
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v6, v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$16902(Landroid/net/wifi/p2p/WifiP2pService;B)B

    .line 3919
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v7, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$7702(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 3921
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_country_code"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3923
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3924
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v6

    const v7, 0x23010

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 3928
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->getMccMode()I

    move-result v6

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$5302(I)I

    .line 3929
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v6

    if-eq v6, v4, :cond_1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$5302(I)I

    .line 3930
    :cond_1
    const-string v6, "WifiP2pService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MCC mode enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v7

    if-ne v7, v4, :cond_2

    :goto_0
    iput-boolean v4, v6, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    .line 3932
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->setMccDriverParameter(I)Z

    .line 3935
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "preferred_p2p_configuration"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3937
    .local v2, "deviceConf":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3938
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3940
    .local v0, "confToken":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 3941
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    .line 3942
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    .line 3943
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$5502(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3955
    .end local v0    # "confToken":[Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->setMaxNumberStation(I)Z

    .line 3956
    const-string v4, "WifiP2pService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mP2pAutoConnectSupport = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5500()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$16600()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V

    .line 3958
    return-void

    .end local v2    # "deviceConf":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 3931
    goto/16 :goto_0

    .line 3949
    .restart local v2    # "deviceConf":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v5

    iget v5, v5, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3952
    .local v3, "deviceConfig":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "preferred_p2p_configuration"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 3944
    .end local v3    # "deviceConfig":Ljava/lang/String;
    .restart local v0    # "confToken":[Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method private isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x1

    .line 3549
    if-nez p1, :cond_1

    .line 3552
    :cond_0
    :goto_0
    return v0

    .line 3550
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3551
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3552
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDisconnectWifiConnection(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3741
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3742
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104066e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104066c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040440

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$11;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040441

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$10;

    invoke-direct {v4, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$10;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$9;

    invoke-direct {v3, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$9;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3764
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3765
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3766
    return-void
.end method

.method private notifyInvitationReceived()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 3349
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v6, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 3350
    .local v6, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x10900c8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3353
    .local v4, "textEntryView":Landroid/view/View;
    const v7, 0x10202dc

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3354
    .local v1, "group":Landroid/view/ViewGroup;
    const v7, 0x1040444

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3357
    const v7, 0x102038c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3359
    .local v2, "pin":Landroid/widget/EditText;
    new-instance v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;

    invoke-direct {v5, p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;)V

    .line 3375
    .local v5, "tw":Landroid/text/TextWatcher;
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3378
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1040443

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040440

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;

    invoke-direct {v9, p0, v6, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$7;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040441

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$6;

    invoke-direct {v9, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$6;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$5;

    invoke-direct {v8, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$5;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3418
    .local v0, "dialog":Landroid/app/AlertDialog;
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v7

    if-nez v7, :cond_0

    .line 3419
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3420
    const v7, 0x104066c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3425
    :cond_0
    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v7, :pswitch_data_0

    .line 3438
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 3441
    new-instance v7, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$8;

    invoke-direct {v7, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$8;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3458
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 3459
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3462
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->okButton:Landroid/widget/Button;
    invoke-static {v7, v8}, Landroid/net/wifi/p2p/WifiP2pService;->access$16502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/Button;)Landroid/widget/Button;

    .line 3463
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->okButton:Landroid/widget/Button;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$16500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 3464
    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->okButton:Landroid/widget/Button;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$16500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3467
    :cond_2
    return-void

    .line 3427
    :pswitch_0
    const-string v7, "Enter pin section visible"

    invoke-virtual {p0, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3428
    const v7, 0x102038b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3431
    :pswitch_1
    const-string v7, "Shown pin section visible"

    invoke-virtual {p0, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3432
    const v7, 0x1040447

    iget-object v8, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v1, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 3425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3280
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3282
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900c8

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3285
    .local v3, "textEntryView":Landroid/view/View;
    const v4, 0x10202dc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3286
    .local v1, "group":Landroid/view/ViewGroup;
    const v4, 0x1040445

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3287
    const v4, 0x1040447

    invoke-direct {p0, v1, v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3289
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040442

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3294
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 3295
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3296
    return-void
.end method

.method private notifyP2pDisconnect(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3771
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3772
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104066e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104066f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040440

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$14;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$14;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040441

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$13;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$13;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;

    invoke-direct {v3, p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$12;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3800
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3801
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3802
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 3260
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 3261
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104043b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104043d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3266
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3267
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3268
    return-void
.end method

.method private notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    .line 3299
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 3300
    .local v2, "r":Landroid/content/res/Resources;
    move-object v3, p2

    .line 3301
    .local v3, "tempDevAddress":Ljava/lang/String;
    move-object v4, p1

    .line 3303
    .local v4, "tempPin":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900c8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3306
    .local v5, "textEntryView":Landroid/view/View;
    const v6, 0x10202dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 3307
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x1040445

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3308
    const v6, 0x1040447

    invoke-direct {p0, v1, v6, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 3310
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1040442

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040440

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;

    invoke-direct {v8, p0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040441

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;

    invoke-direct {v8, p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3337
    .local v0, "dialog":Landroid/app/AlertDialog;
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$5300()I

    move-result v6

    if-nez v6, :cond_0

    .line 3338
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3339
    const v6, 0x104066c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3343
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 3344
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3345
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 4107
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4108
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4109
    return-object v0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 3571
    const/4 v1, 0x0

    .line 3572
    .local v1, "join":Z
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3574
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$8100(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3575
    const/4 v1, 0x1

    .line 3581
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p1, v1}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v2

    .line 3583
    .local v2, "pin":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3584
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3588
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v4, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$8102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 3589
    return-void

    .line 3578
    .end local v2    # "pin":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    goto :goto_0

    .line 3585
    .restart local v2    # "pin":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3598
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 3600
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    .line 3601
    .local v1, "join":Z
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3602
    .local v3, "ssid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "target ssid is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " join:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3604
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3605
    const-string/jumbo v6, "target device reaches group limit."

    invoke-virtual {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3609
    const/4 v1, 0x0

    .line 3622
    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isDeviceLimit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3623
    const-string/jumbo v5, "target device reaches the device limit."

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3654
    :cond_1
    :goto_0
    return v4

    .line 3610
    :cond_2
    if-eqz v1, :cond_0

    .line 3611
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3612
    .local v2, "netId":I
    if-ltz v2, :cond_0

    .line 3614
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 3615
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 3618
    goto :goto_0

    .line 3627
    .end local v2    # "netId":I
    :cond_3
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3628
    const/4 v2, -0x2

    .line 3629
    .restart local v2    # "netId":I
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    if-ltz v6, :cond_6

    .line 3630
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3631
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 3636
    :cond_4
    :goto_1
    if-gez v2, :cond_5

    .line 3637
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getNetworkIdFromClientList(Ljava/lang/String;)I

    move-result v2

    .line 3639
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "netId related with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3640
    if-ltz v2, :cond_1

    .line 3642
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3644
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    move v4, v5

    .line 3645
    goto :goto_0

    .line 3634
    :cond_6
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 3647
    :cond_7
    const-string/jumbo v5, "p2pReinvoke() failed, update networks"

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3648
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$16600()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V

    goto/16 :goto_0
.end method

.method private removeClientFromList(ILjava/lang/String;Z)Z
    .locals 11
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    .prologue
    const/4 v7, 0x1

    .line 3704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3705
    .local v6, "modifiedClientList":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v2

    .line 3706
    .local v2, "currentClientList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 3707
    .local v4, "isClientRemoved":Z
    if-eqz v2, :cond_1

    .line 3708
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 3709
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3710
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3713
    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 3717
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz p3, :cond_2

    .line 3719
    const-string v8, "Remove unknown network"

    invoke-virtual {p0, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3720
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 3736
    :goto_2
    return v7

    .line 3724
    :cond_2
    if-nez v4, :cond_3

    .line 3726
    const/4 v7, 0x0

    goto :goto_2

    .line 3729
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Modified client list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 3731
    const-string v8, "\"\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3733
    :cond_4
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v9, "p2p_client_list"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 3735
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_2
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 4260
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 4261
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 4272
    :cond_0
    :goto_0
    return-void

    .line 4265
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    .line 4267
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4268
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 4269
    const-string/jumbo v1, "remove client information from framework"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4270
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 4185
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 4186
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 4213
    :cond_0
    :goto_0
    return-void

    .line 4192
    :cond_1
    const/4 v2, 0x0

    .line 4193
    .local v2, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 4194
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4195
    const/4 v2, 0x1

    .line 4196
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4201
    :cond_2
    if-eqz v2, :cond_0

    .line 4203
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 4204
    const-string/jumbo v3, "remove client information from framework"

    invoke-virtual {p0, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4205
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4208
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4212
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0

    .line 4193
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 4082
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4086
    :goto_0
    return-void

    .line 4083
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4084
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4085
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$17000(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 4089
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4094
    :goto_0
    return-void

    .line 4090
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4091
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4092
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 4093
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$17000(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4097
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 4102
    :goto_0
    return-void

    .line 4098
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 4099
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 4100
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4101
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$17000(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetWifiP2pInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3814
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 3815
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 3816
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 3817
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    .line 3818
    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pConnectedState:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16702(Z)Z

    .line 3819
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 5

    .prologue
    .line 3211
    const-string/jumbo v1, "sending p2p connection changed broadcast"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3213
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3215
    const-string/jumbo v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3216
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$3500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3217
    const-string/jumbo v1, "p2pGroupInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3218
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3219
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300b

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$3500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 3221
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 3183
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5000(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 3194
    :goto_0
    return-void

    .line 3184
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static {v1, p1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 3186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discovery change broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3189
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3190
    const-string v2, "discoveryState"

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3193
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 3190
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sendP2pPersistentGroupsChangedBroadcast()V
    .locals 3

    .prologue
    .line 3224
    const-string/jumbo v1, "sending p2p persistent groups changed broadcast"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3226
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3227
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3228
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 3170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3171
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3172
    if-eqz p1, :cond_0

    .line 3173
    const-string/jumbo v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3179
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3180
    return-void

    .line 3176
    :cond_0
    const-string/jumbo v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendPeersChangedBroadcast()V
    .locals 4

    .prologue
    .line 3204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3205
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiP2pDeviceList"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3206
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3207
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3208
    return-void
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    const/4 v7, 0x0

    .line 4302
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 4303
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 4304
    .local v4, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    .line 4305
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 4306
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x22032

    iput v5, v3, Landroid/os/Message;->what:I

    .line 4307
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 4308
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 4309
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4311
    :try_start_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4312
    :catch_0
    move-exception v1

    .line 4313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "detect dead channel"

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 4314
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17300(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    .line 4319
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_1
    return-void
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 3197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3198
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3199
    const-string/jumbo v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3200
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3201
    return-void
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3861
    if-nez p1, :cond_0

    .line 3874
    :goto_0
    return v0

    .line 3863
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3868
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 3869
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 3871
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3873
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 3874
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setTheBestChannel()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3962
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6400()I

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6400()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 3965
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3968
    .local v0, "countryCode":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3969
    const-string v0, "US"

    .line 3971
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 3972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Country Code detected ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3973
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget v2, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    sget v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/net/wifi/WifiNative;->p2pSetBestChannel(IILjava/lang/String;I)Z

    .line 3981
    .end local v0    # "countryCode":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 3976
    :cond_3
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$6400()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3978
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    sget v2, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->p2pSetBestChannelTwoFour(I)Z

    .line 3979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "setTheBestChannel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 5
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3880
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3881
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v0

    .line 3888
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_2

    .line 3889
    const-string v1, "Failed to set wfd properties"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 3895
    :goto_1
    return v2

    .line 3883
    .end local v0    # "success":Z
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceInfoHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .restart local v0    # "success":Z
    :goto_2
    goto :goto_0

    .end local v0    # "success":Z
    :cond_1
    move v0, v2

    goto :goto_2

    .line 3893
    .restart local v0    # "success":Z
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iput-object p1, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 3894
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    move v2, v1

    .line 3895
    goto :goto_1
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x1

    .line 3806
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v2, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 3807
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 3808
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 3809
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOperatingChannel()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    .line 3810
    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pConnectedState:Z
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$16702(Z)Z

    .line 3811
    return-void
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 3231
    const/4 v1, 0x0

    .line 3233
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3234
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "192.168.49.1"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 3236
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 3237
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3239
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$16200()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started Dhcp server on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3246
    :goto_0
    return-void

    .line 3240
    :catch_0
    move-exception v0

    .line 3241
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error configuring interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 3250
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3256
    const-string v1, "Stopped Dhcp server"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3257
    :goto_0
    return-void

    .line 3251
    :catch_0
    move-exception v0

    .line 3252
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stopping Dhcp server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePersistentNetworks(Z)V
    .locals 15
    .param p1, "reload"    # Z

    .prologue
    .line 3474
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v8

    .line 3475
    .local v8, "listStr":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 3541
    :cond_0
    :goto_0
    return-void

    .line 3477
    :cond_1
    const/4 v6, 0x0

    .line 3478
    .local v6, "isSaveRequired":Z
    const-string v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3479
    .local v7, "lines":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 3481
    if-eqz p1, :cond_2

    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    .line 3484
    :cond_2
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_8

    .line 3485
    aget-object v13, v7, v5

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3486
    .local v11, "result":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v13, v11

    const/4 v14, 0x4

    if-ge v13, v14, :cond_4

    .line 3484
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3490
    :cond_4
    const/4 v10, -0x1

    .line 3491
    .local v10, "netId":I
    const/4 v13, 0x1

    aget-object v12, v11, v13

    .line 3492
    .local v12, "ssid":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v0, v11, v13

    .line 3493
    .local v0, "bssid":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v3, v11, v13

    .line 3495
    .local v3, "flags":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 3501
    const-string v13, "[CURRENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 3504
    const-string v13, "[P2P-PERSISTENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 3509
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clean up the unused persistent group. netId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 3510
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v13, v10}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    .line 3511
    const/4 v6, 0x1

    .line 3512
    goto :goto_2

    .line 3496
    :catch_0
    move-exception v2

    .line 3497
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 3515
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 3519
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 3520
    .local v4, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 3521
    invoke-virtual {v4, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 3522
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v14, "mode"

    invoke-virtual {v13, v10, v14}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3523
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v13, "3"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3524
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 3526
    :cond_6
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3527
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 3533
    :goto_3
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v4}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 3534
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 3529
    :cond_7
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 3530
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 3531
    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 3537
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "flags":Ljava/lang/String;
    .end local v4    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "netId":I
    .end local v11    # "result":[Ljava/lang/String;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    if-eqz v6, :cond_0

    .line 3538
    :cond_9
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 3539
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 4126
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 4128
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 4129
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 4132
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 4133
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$17100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 4134
    .local v3, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    .line 4135
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4132
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4140
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v1    # "i":I
    .end local v3    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 4148
    :cond_3
    :goto_1
    return v5

    .line 4144
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$7702(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 4145
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4148
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateThisDevice(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 3985
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 3987
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3988
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 3993
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 3994
    return-void

    .line 3990
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3062
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiP2pInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedPeerConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedP2pGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3068
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4114
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4119
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    return-void
.end method
