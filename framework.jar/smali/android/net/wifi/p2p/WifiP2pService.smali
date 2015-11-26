.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;,
        Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    }
.end annotation


# static fields
.field private static final ACTION_SAFE_WIFI_CHANNELS_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

.field public static final AUTOCONNECT_DISABLED:I = 0x0

.field public static final AUTOCONNECT_ENABLED:I = 0x1

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final DBG:Z = true

.field private static final DHCP_RANGE:[Ljava/lang/String;

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field public static final DISPLAY_SCREEN_ON_OFF_STATUS:I = 0x23019

.field public static final DRIVER_HUNG_EVENT_IN_WIFIDIRECT:I = 0x23015

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final GROUP_INVITATION_TIMED_OUT:I = 0x23017

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_DEVICE_LIST:I = 0x2301a

.field private static final P2P_GET_IP_ADDRESS:I = 0x23016

.field private static final P2P_MAX_NUMBER_STATION:I = 0x8

.field public static final P2P_PERSISTENT_AUTO_CONNECT:I = 0x2301b

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final START_WIFI_SCAN_FROM_P2P:I = 0x23018

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static mDisableP2pTimeoutIndex:I

.field private static mDisplayScreenStatus:Z

.field private static mGroupCreatingTimeoutIndex:I

.field private static mIsMccModeEnabled:I

.field public static mIsWifiP2pEnabled:Z

.field private static mP2pAutoConnectSupport:I

.field private static mP2pConnectedState:Z

.field private static mSupportedBand:I


# instance fields
.field private PERSISTENT_RETRY_COUNT:I

.field private endSafeChannel:I

.field private mAutonomousGroup:Z

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mGroupSendInvitationTimeoutIndex:I

.field private mInterface:Ljava/lang/String;

.field private mIsInvite:Z

.field private mJoinExistingGroup:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pDiscoverStarted:Z

.field private mP2pListFromWifiScan:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistentAutoConnectInProgress:Z

.field private mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mSaveSelectedGoDevice:Ljava/lang/String;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mTempoarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

.field private okButton:Landroid/widget/Button;

.field private startSafeChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 133
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    .line 140
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 143
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    .line 239
    sput-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->mIsWifiP2pEnabled:Z

    .line 282
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I

    .line 287
    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I

    .line 305
    sput-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisplayScreenStatus:Z

    .line 307
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I

    .line 315
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.2"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 396
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 129
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 144
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupSendInvitationTimeoutIndex:I

    .line 231
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 241
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->startSafeChannel:I

    .line 243
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->endSafeChannel:I

    .line 248
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z

    .line 266
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    .line 270
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    .line 273
    iput-byte v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 280
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 302
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pListFromWifiScan:Ljava/util/List;

    .line 304
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z

    .line 306
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z

    .line 308
    const-string v1, ""

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSaveSelectedGoDevice:Ljava/lang/String;

    .line 309
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->PERSISTENT_RETRY_COUNT:I

    .line 311
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    .line 397
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 400
    const-string/jumbo v1, "p2p0"

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 401
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0xd

    const-string v3, "WIFI_P2P"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 403
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 406
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 409
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v2, "WifiP2pService"

    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 410
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 411
    const/4 v1, 0x1

    sput-boolean v1, Landroid/net/wifi/p2p/WifiP2pService;->mDisplayScreenStatus:Z

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->startSafeChannel:I

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisplayScreenStatus:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 116
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->mDisplayScreenStatus:Z

    return p0
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->startSafeChannel:I

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pListFromWifiScan:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$11302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12400(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z

    return v0
.end method

.method static synthetic access$12402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentAutoConnectInProgress:Z

    return p1
.end method

.method static synthetic access$12900(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->PERSISTENT_RETRY_COUNT:I

    return v0
.end method

.method static synthetic access$13600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$13602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15500(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupSendInvitationTimeoutIndex:I

    return v0
.end method

.method static synthetic access$15504(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupSendInvitationTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupSendInvitationTimeoutIndex:I

    return v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return p1
.end method

.method static synthetic access$16200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16400()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$16500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$16502(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->okButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$16600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$16702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 116
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pConnectedState:Z

    return p0
.end method

.method static synthetic access$16800(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$16900(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$16902(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # B

    .prologue
    .line 116
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$16904(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->endSafeChannel:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 116
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->endSafeChannel:I

    return p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2204()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z

    return v0
.end method

.method static synthetic access$3902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pDiscoverStarted:Z

    return p1
.end method

.method static synthetic access$4000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPreviouslyConnectedDeviceInfo:Landroid/net/wifi/p2p/WifiP2pService$PreviouslyConnectedDeviceInfo;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSaveSelectedGoDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSaveSelectedGoDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5000(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$5300()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I

    return v0
.end method

.method static synthetic access$5302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 116
    sput p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I

    return p0
.end method

.method static synthetic access$5500()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I

    return v0
.end method

.method static synthetic access$5502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 116
    sput p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I

    return p0
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I

    return v0
.end method

.method static synthetic access$6402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 116
    sput p0, Landroid/net/wifi/p2p/WifiP2pService;->mSupportedBand:I

    return p0
.end method

.method static synthetic access$6700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiP2pDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->frequencyToChannel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7702(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z

    return v0
.end method

.method static synthetic access$8102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z

    return p1
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService;->channelToFrequency(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9200()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$9204()I
    .locals 1

    .prologue
    .line 116
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method private channelToFrequency(I)I
    .locals 1
    .param p1, "chan"    # I

    .prologue
    const/16 v0, 0xe

    .line 572
    if-ne p1, v0, :cond_0

    .line 573
    const/16 v0, 0x9b4

    .line 577
    :goto_0
    return v0

    .line 574
    :cond_0
    if-ge p1, v0, :cond_1

    .line 575
    mul-int/lit8 v0, p1, 0x5

    add-int/lit16 v0, v0, 0x967

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method private frequencyToChannel(I)I
    .locals 1
    .param p1, "freq"    # I

    .prologue
    const/16 v0, 0x9b4

    .line 558
    if-ne p1, v0, :cond_0

    .line 559
    const/16 v0, 0xe

    .line 565
    :goto_0
    return v0

    .line 560
    :cond_0
    if-ge p1, v0, :cond_1

    .line 561
    add-int/lit16 v0, p1, -0x967

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 562
    :cond_1
    const/16 v0, 0x132e

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1374

    if-gt p1, v0, :cond_2

    .line 563
    add-int/lit16 v0, p1, -0xfa0

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 565
    :cond_2
    add-int/lit16 v0, p1, -0x1388

    div-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public static getMccModeEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 591
    sget v1, Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I

    if-ne v1, v0, :cond_0

    .line 594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getP2pAutoConnectSupport()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 600
    sget-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->mP2pConnectedState:Z

    if-nez v2, :cond_0

    sget v2, Landroid/net/wifi/p2p/WifiP2pService;->mP2pAutoConnectSupport:I

    if-ne v2, v1, :cond_0

    sget-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisplayScreenStatus:Z

    if-ne v2, v1, :cond_0

    .line 603
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->getWiFiConnectedState()Z

    move-result v2

    if-ne v2, v1, :cond_1

    sget v2, Landroid/net/wifi/p2p/WifiP2pService;->mIsMccModeEnabled:I

    if-nez v2, :cond_1

    .line 607
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 605
    goto :goto_0
.end method

.method public static getP2pConnectedState()Z
    .locals 1

    .prologue
    .line 582
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pConnectedState:Z

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 475
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 476
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 477
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempoarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getDeviceP2pChannelList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getDeviceP2pChannelList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 500
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 501
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 502
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWfdChannelList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getWfdChannelList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMacAddressStoredInGO(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientMacAddress"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->isMacAddressStoredInGo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 515
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceConnectivityInternalPermission()V

    .line 516
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(II)V

    .line 517
    return-void
.end method
