.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$UntetheringState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WpsRunningState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;,
        Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiStateMachine$ObtainingIpState;,
        Landroid/net/wifi/WifiStateMachine$L2ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;,
        Landroid/net/wifi/WifiStateMachine$InterfaceObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

.field private static final ACTION_SAFE_WIFI_CHANNELS_CHANGED:Ljava/lang/String; = "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field static final BASE:I = 0x20000

.field private static final BATCHED_SETTING:Ljava/lang/String; = "batched_settings"

.field private static final BATCHED_WORKSOURCE:Ljava/lang/String; = "batched_worksource"

.field private static final BSSID_STR:Ljava/lang/String; = "bssid="

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field public static final CMD_BOOT_COMPLETED:I = 0x20086

.field static final CMD_CAPTIVE_CHECK_COMPLETE:I = 0x20014

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_COUNTRY_DETECT:I = 0x2005d

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field public static final CMD_DEV_STATIONARY:I = 0x20092

.field public static final CMD_DISABLE_P2P_REQ:I = 0x20084

.field public static final CMD_DISABLE_P2P_RSP:I = 0x20085

.field static final CMD_DISCONNECT:I = 0x20049

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field public static final CMD_DUMP_DXE:I = 0x20089

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field public static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_ENABLE_TDLS:I = 0x2005c

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_IP_ADDRESS_REMOVED:I = 0x20090

.field static final CMD_IP_ADDRESS_UPDATED:I = 0x2008f

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field public static final CMD_P2P_UPDATE_CHANNEL_LIST:I = 0x20087

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field public static final CMD_POLL_BATCHED_SCAN:I = 0x2008e

.field static final CMD_READ_PRELOAD_SSID_AUTO_CONNECT_STATUS:I = 0x2005f

.field static final CMD_REASSOCIATE:I = 0x2004b

.field static final CMD_RECONNECT:I = 0x2004a

.field static final CMD_RELOAD_TLS_AND_RECONNECT:I = 0x20091

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field public static final CMD_SET_BATCHED_SCAN:I = 0x2008c

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field public static final CMD_SET_DRIVER_LOGGING_PARAMS:I = 0x20088

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_OPERATIONAL_MODE:I = 0x20048

.field static final CMD_SET_PRELOAD_SSID_AUTO_CONNECT:I = 0x2005e

.field static final CMD_SET_SUSPEND_OPT_ENABLED:I = 0x20056

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field public static final CMD_START_NEXT_BATCHED_SCAN:I = 0x2008d

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field public static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field public static final CONNECT_MODE:I = 0x1

.field private static final DBG:Z = true

.field private static final DEBUG_PARSE:Z = false

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final DRIVER_HUNG_EVENT_INTERVAL_MSEC:I = 0xbb8

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final END_STR:Ljava/lang/String; = "####"

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final FAILURE:I = -0x1

.field private static final FLAGS_STR:Ljava/lang/String; = "flags="

.field private static final FREQ_STR:Ljava/lang/String; = "freq="

.field private static final HOTSPOT_ENABLED:Z

.field private static final ID_STR:Ljava/lang/String; = "id="

.field private static final LEVEL_STR:Ljava/lang/String; = "level="

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x0

.field static final MULTICAST_V6:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field public static final SCAN_ONLY_MODE:I = 0x2

.field public static final SCAN_ONLY_WITH_WIFI_OFF_MODE:I = 0x3

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final SUSPEND_DUE_TO_DHCP:I = 0x1

.field private static final SUSPEND_DUE_TO_HIGH_PERF:I = 0x2

.field private static final SUSPEND_DUE_TO_SCREEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TSF_STR:Ljava/lang/String; = "tsf="

.field private static final UNKNOWN_SCAN_SOURCE:I = -0x1

.field public static mWiFiConnectedState:Z

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final COUNTRY_CODE_CHECK_HYSTERESIS_TIMEOUT_MS:I

.field private final COUNTRY_CODE_FLUSH_HYSTERESIS_TIMEOUT_MS:I

.field private final COUNTRY_DETECTOR_LAZY_INIT_DELAY_MS:I

.field private final PREF_WIFI_AUTOCONNECT_PRELOADED_NW:Ljava/lang/String;

.field private WifiStateReceiver:Landroid/content/BroadcastReceiver;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private endSafeChannel:I

.field private lfrPreauthstr:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBackgroundScanSupported:Z

.field private mBatchedScanCsph:I

.field private mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

.field private mBatchedScanMinPollTime:J

.field private mBatchedScanOwnerUid:I

.field private final mBatchedScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

.field private mBatchedScanWorkSource:Landroid/os/WorkSource;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private mCaptivePortalCheckState:Lcom/android/internal/util/State;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCountryCodeProgrammed:Ljava/lang/String;

.field private final mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryListener:Landroid/location/CountryListener;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDefaultSupplicantScanIntervalMs:I

.field private mDelayedStopCounter:I

.field private mDhcpActive:Z

.field private mDhcpFilterInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mDhcpResultsLock:Ljava/lang/Object;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mExpectedBatchedScans:I

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mInDelayedStop:Z

.field private mInDxeStall:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

.field private mIsRunning:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private mLastNetworkId:I

.field private mLastRssi:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mLastSignalLevel:I

.field private mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mNetlinkLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextCountryFlushAt:J

.field private mNotedBatchedScanCsph:I

.field private mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private mOperationalMode:I

.field private final mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private volatile mPersistedCountryCode:Ljava/lang/String;

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkSource:Landroid/os/WorkSource;

.field private mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendOptNeedsDisabled:I

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTemporarilyDisconnectWifi:Z

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUntetheringState:Lcom/android/internal/util/State;

.field private mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiBestChannel:Lcom/motorola/android/wifi/WifiBestChannel;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiScanDeviceStationary:Z

.field private mWifiScanMovementListener:Landroid/net/wifi/MotWifiScanMovementListener;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

.field private mWisprTarget:Landroid/net/wifi/WifiWisprClient;

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private startSafeChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    const-string v2, "\t+"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 331
    const-string/jumbo v2, "ro.mot.wifi.hotspot"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wlanInterface"    # Ljava/lang/String;

    .prologue
    .line 858
    const-string v8, "WifiStateMachine"

    invoke-direct {p0, v8}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 153
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    .line 157
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 163
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    .line 165
    const/4 v8, -0x1

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanOwnerUid:I

    .line 166
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 167
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 176
    const/4 v8, -0x1

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 178
    const/16 v8, -0xc8

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastRssi:I

    .line 182
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 183
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 184
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 185
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 191
    const/4 v8, 0x1

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    .line 192
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 193
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 198
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 204
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->startSafeChannel:I

    .line 205
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->endSafeChannel:I

    .line 223
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 225
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 233
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    .line 241
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 257
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 267
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    .line 273
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 275
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 316
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 319
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 322
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 324
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFilterInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 328
    new-instance v8, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v8}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 556
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 563
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 591
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiScanDeviceStationary:Z

    .line 601
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 615
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 617
    new-instance v8, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 619
    new-instance v8, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 621
    new-instance v8, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 623
    new-instance v8, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 625
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 627
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 632
    new-instance v8, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 634
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 636
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 638
    new-instance v8, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 640
    new-instance v8, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 642
    new-instance v8, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 644
    new-instance v8, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 646
    new-instance v8, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    .line 648
    new-instance v8, Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$CaptivePortalCheckState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;

    .line 650
    new-instance v8, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 652
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 654
    new-instance v8, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 656
    new-instance v8, Landroid/net/wifi/WifiStateMachine$WpsRunningState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    .line 659
    new-instance v8, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 661
    new-instance v8, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 663
    new-instance v8, Landroid/net/wifi/WifiStateMachine$TetheringState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 665
    new-instance v8, Landroid/net/wifi/WifiStateMachine$TetheredState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 667
    new-instance v8, Landroid/net/wifi/WifiStateMachine$UntetheringState;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$UntetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    .line 687
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 697
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v9, 0xb

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 715
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 720
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 725
    new-instance v8, Landroid/os/WorkSource;

    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 730
    new-instance v8, Landroid/os/WorkSource;

    invoke-direct {v8}, Landroid/os/WorkSource;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 734
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 740
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 741
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 742
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 743
    const/4 v8, 0x0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 745
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiScanMovementListener:Landroid/net/wifi/MotWifiScanMovementListener;

    .line 751
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mInDxeStall:Z

    .line 754
    sget-object v8, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 755
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;

    .line 759
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    .line 760
    const-string v8, "00"

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;

    .line 761
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiStateMachine;->mNextCountryFlushAt:J

    .line 763
    const v8, 0x36ee80

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->COUNTRY_CODE_FLUSH_HYSTERESIS_TIMEOUT_MS:I

    .line 764
    const v8, 0xdbba0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->COUNTRY_CODE_CHECK_HYSTERESIS_TIMEOUT_MS:I

    .line 765
    const/16 v8, 0x7d0

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->COUNTRY_DETECTOR_LAZY_INIT_DELAY_MS:I

    .line 768
    const-string/jumbo v8, "wifi_auto_connect_preloaded_nw"

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->PREF_WIFI_AUTOCONNECT_PRELOADED_NW:Ljava/lang/String;

    .line 773
    new-instance v8, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCountryListener:Landroid/location/CountryListener;

    .line 1074
    new-instance v8, Landroid/net/wifi/WifiStateMachine$8;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$8;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->WifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 859
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 860
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 863
    new-instance v8, Lcom/motorola/android/wifi/WifiBestChannel;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/motorola/android/wifi/WifiBestChannel;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiBestChannel:Lcom/motorola/android/wifi/WifiBestChannel;

    .line 866
    new-instance v8, Landroid/net/NetworkInfo;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "WIFI"

    const-string v12, ""

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 867
    const-string v8, "batterystats"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 870
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 871
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 873
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi.direct"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 876
    new-instance v8, Landroid/net/wifi/WifiNative;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 877
    new-instance v8, Landroid/net/wifi/WifiConfigStore;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v8, p1, v9}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 878
    new-instance v8, Landroid/net/wifi/WifiMonitor;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v8, p0, v9}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 879
    new-instance v8, Landroid/net/wifi/WifiInfo;

    invoke-direct {v8}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 880
    new-instance v8, Landroid/net/wifi/SupplicantStateTracker;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-direct {v8, p1, p0, v9, v10}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 882
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 883
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    .line 885
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifip2p"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 887
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 888
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 889
    const/4 v8, -0x1

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 890
    const/4 v8, -0x1

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 892
    const/16 v8, -0xc8

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mLastRssi:I

    .line 895
    new-instance v8, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    invoke-direct {v8, p0, p0}, Landroid/net/wifi/WifiStateMachine$InterfaceObserver;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    .line 897
    :try_start_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceObserver:Landroid/net/wifi/WifiStateMachine$InterfaceObserver;

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :goto_0
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 903
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 904
    .local v7, "scanIntent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 906
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/motorola/android/wifi/WifiMetrics;->getInstance(Landroid/content/Context;)Lcom/motorola/android/wifi/WifiMetrics;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    .line 907
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    invoke-virtual {v8}, Lcom/motorola/android/wifi/WifiMetrics;->getWifiStats()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .line 910
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 911
    .local v2, "batchedIntent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    .line 913
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0011

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 916
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    .line 919
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 922
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 925
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "wifi_suspend_optimizations_enabled"

    const/4 v11, 0x1

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 930
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I

    .line 933
    new-instance v8, Landroid/net/wifi/MotWifiScanMovementListener;

    invoke-direct {v8, p1, p0}, Landroid/net/wifi/MotWifiScanMovementListener;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiScanMovementListener:Landroid/net/wifi/MotWifiScanMovementListener;

    .line 935
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v9, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 947
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 948
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "qualcomm.intent.action.SAFE_WIFI_CHANNELS_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 949
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 950
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 951
    const-string v8, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 954
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v9, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 964
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/net/wifi/WifiStateMachine$4;

    invoke-direct {v9, p0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 980
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/net/wifi/WifiStateMachine$5;

    invoke-direct {v9, p0}, Landroid/net/wifi/WifiStateMachine$5;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 990
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_suspend_optimizations_enabled"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v11, Landroid/net/wifi/WifiStateMachine$6;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Landroid/net/wifi/WifiStateMachine$6;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1001
    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v0, "apmBcIf":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1003
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/net/wifi/WifiStateMachine$7;

    invoke-direct {v9, p0}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v8, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1020
    new-instance v8, Landroid/util/LruCache;

    const/16 v9, 0x50

    invoke-direct {v8, v9}, Landroid/util/LruCache;-><init>(I)V

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1022
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 1023
    .local v6, "powerManager":Landroid/os/PowerManager;
    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1025
    const/4 v8, 0x1

    const-string v9, "WifiSuspend"

    invoke-virtual {v6, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1026
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1029
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 1030
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    iput-object v8, p0, Landroid/net/wifi/WifiStateMachine;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1033
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1034
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1035
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1036
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1037
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1038
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1039
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1040
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1041
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1042
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1043
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1044
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1045
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1046
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1047
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1048
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1049
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1050
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1051
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1052
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1053
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1054
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1055
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1056
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1057
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8, v9}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1059
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1061
    const/16 v8, 0x7d0

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->setLogRecSize(I)V

    .line 1062
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->setLogOnlyTransitions(Z)V

    .line 1063
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->setDbg(Z)V

    .line 1066
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    .line 1068
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "wifi_scan_available"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v8, 0x4000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1070
    const-string/jumbo v8, "scan_enabled"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1072
    return-void

    .line 898
    .end local v0    # "apmBcIf":Landroid/content/IntentFilter;
    .end local v2    # "batchedIntent":Landroid/content/Intent;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "powerManager":Landroid/os/PowerManager;
    .end local v7    # "scanIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 899
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t register interface observer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "batchedIntent":Landroid/content/Intent;
    .restart local v7    # "scanIntent":Landroid/content/Intent;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScanAsync()V

    return-void
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantConnectionLoss()V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setScanResults()V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$10902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->parseP2pDeviceFromWifiScanResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    return v0
.end method

.method static synthetic access$11202(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    return p1
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$11404(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$12104(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$13102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$13208(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$13802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    return p1
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleAPMStateChange()V

    return-void
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiBestChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiBestChannel:Lcom/motorola/android/wifi/WifiBestChannel;

    return-object v0
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    return v0
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;ILandroid/os/WorkSource;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->noteScanStart(ILandroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startScanNative(I)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/BatchedScanSettings;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    return-object v0
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->startSafeChannel:I

    return v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->startSafeChannel:I

    return p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$16202(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return v0
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->endSafeChannel:I

    return v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1702(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->endSafeChannel:I

    return p1
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFilterInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17702(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    return-object v0
.end method

.method static synthetic access$17802(Landroid/net/wifi/WifiStateMachine;Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;)Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    return-object p1
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->restartSoftApIfOn()V

    return-void
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18202(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V

    return-void
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic access$19702(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->notifyDisconnectP2pConnection(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$21300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$21608(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$21700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21800(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpResults;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V

    return-void
.end method

.method static synthetic access$21900()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startWISPRLoginClient()V

    return-void
.end method

.method static synthetic access$22100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$22200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$22500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$22800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$23000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2302(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$23100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$23200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendWifiRoamBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$23700(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V

    return-void
.end method

.method static synthetic access$23800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$24500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$24600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$24700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$24800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCaptivePortalCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$25200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRssi:I

    return v0
.end method

.method static synthetic access$25900(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$26000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$26100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$26600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z

    return v0
.end method

.method static synthetic access$26602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z

    return p1
.end method

.method static synthetic access$26700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiWisprClient;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    return-object v0
.end method

.method static synthetic access$26802(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$26900(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleWISPRLoginFailed(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$27000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$27100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$27200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$27400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$27500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$27600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiScanDeviceStationary:Z

    return v0
.end method

.method static synthetic access$27700(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$27800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$27900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$27904(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$28000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$28400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$28900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$29000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$29100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$29400(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$29500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$29600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$29800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$29900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->flushCountryCodeIfTimedOut()V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$30000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$30100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$30600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$30800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$30900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizations(IZ)V

    return-void
.end method

.method static synthetic access$31000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$31004(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$31100(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$31200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$31300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$31400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$31600(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(I)V

    return-void
.end method

.method static synthetic access$31700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$31800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$31900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$3202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$32100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$32200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$32400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$32900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$33000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;IIILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/WifiStateMachine;->sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;IILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->recordBatchedScanSettings(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleBatchedScanPollRequest()V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$3802(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/android/wifi/WifiMetrics;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return v0
.end method

.method static synthetic access$4402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z

    return p1
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->initializeCountryDetectorAndCheckCountry()V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeProgrammed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$5502(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$8002(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$8004(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mNextCountryFlushAt:J

    return-wide p1
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8202(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$8302(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$8402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 139
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/MotWifiScanMovementListener;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiScanMovementListener:Landroid/net/wifi/MotWifiScanMovementListener;

    return-object v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$9702(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 2040
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2041
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 2043
    :cond_0
    return-void
.end method

.method private clearLinkProperties()V
    .locals 2

    .prologue
    .line 2517
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2518
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->clearLinkProperties(I)V

    .line 2522
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2523
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    .line 2524
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 2526
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2527
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 2530
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 2531
    return-void

    .line 2526
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/net/wifi/RssiPacketCountInfo;

    .prologue
    .line 2435
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->pktcntPoll()Ljava/lang/String;

    move-result-object v5

    .line 2437
    .local v5, "pktcntPoll":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2438
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2439
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2440
    .local v3, "line":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2441
    .local v6, "prop":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 2439
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2443
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    const-string v8, "TXGOOD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2444
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    goto :goto_1

    .line 2448
    :catch_0
    move-exception v7

    goto :goto_1

    .line 2445
    :cond_2
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "TXBAD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2446
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2453
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v6    # "prop":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/16 v12, -0xc8

    .line 2376
    const/4 v6, -0x1

    .line 2377
    .local v6, "newRssi":I
    const/4 v5, -0x1

    .line 2379
    .local v5, "newLinkSpeed":I
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v9

    .line 2381
    .local v9, "signalPoll":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2382
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2383
    .local v4, "lines":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2384
    .local v3, "line":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2385
    .local v8, "prop":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 2383
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2387
    :cond_1
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v8, v10

    const-string v11, "RSSI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2388
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 2389
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    const-string v11, "LINKSPEED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2390
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .line 2398
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lines":[Ljava/lang/String;
    .end local v8    # "prop":[Ljava/lang/String;
    :cond_3
    if-eq v6, v13, :cond_7

    if-ge v12, v6, :cond_7

    const/16 v10, 0x100

    if-ge v6, v10, :cond_7

    .line 2402
    if-lez v6, :cond_4

    add-int/lit16 v6, v6, -0x100

    .line 2403
    :cond_4
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2414
    const/4 v10, 0x5

    invoke-static {v6, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    .line 2415
    .local v7, "newSignalLevel":I
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v7, v10, :cond_5

    .line 2416
    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 2418
    :cond_5
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2420
    iput v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastRssi:I

    .line 2426
    .end local v7    # "newSignalLevel":I
    :goto_2
    if-eq v5, v13, :cond_6

    .line 2427
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 2429
    :cond_6
    return-void

    .line 2423
    :cond_7
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v12}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    goto :goto_2

    .line 2392
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "lines":[Ljava/lang/String;
    .restart local v8    # "prop":[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1
.end method

.method private flushCountryCodeIfTimedOut()V
    .locals 7

    .prologue
    const-wide/32 v5, 0x36ee80

    const v4, 0x2005d

    .line 809
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mNextCountryFlushAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mNextCountryFlushAt:J

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country code flush interval not set - FLUSH at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiStateMachine;->mNextCountryFlushAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 819
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mNextCountryFlushAt:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 823
    const-string v0, "US"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 824
    const-string v0, "Country code flush XX called"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 825
    const-wide/32 v0, 0xdbba0

    invoke-virtual {p0, v4, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    .line 828
    :cond_1
    return-void
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 2534
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method public static getWiFiConnectedState()Z
    .locals 1

    .prologue
    .line 5301
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWiFiConnectedState:Z

    if-eqz v0, :cond_0

    .line 5302
    const/4 v0, 0x1

    .line 5304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleAPMStateChange()V
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 833
    const-string v0, "APM ON"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCountryListener:Landroid/location/CountryListener;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 839
    :goto_1
    return-void

    .line 834
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 837
    :cond_1
    const-string v0, "APM OFF"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleBatchedScanPollRequest()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleBatchedScanPoll Request - mBatchedScanMinPollTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mBatchedScanSettings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1201
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v2, :cond_0

    .line 1204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1206
    .local v0, "now":J
    iget-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1208
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startNextBatchedScan()V

    goto :goto_0

    .line 1210
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1212
    iput-wide v7, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    goto :goto_0
.end method

.method private handleFailedIpConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2815
    const-string v1, "IP configuration failed"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2817
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 2818
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 2823
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getMaxDhcpRetries()I

    move-result v0

    .line 2825
    .local v0, "maxRetries":I
    if-lez v0, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    if-le v1, v0, :cond_0

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2828
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 2830
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 2836
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 2837
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 2838
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2647
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_0

    .line 2648
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 2649
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " HANDOVER_DISCONNECT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/android/wifi/WifiMetrics;->reportLFRmetrics(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;Ljava/lang/String;)V

    .line 2650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LFR Handover Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->lfrPreauthstr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2653
    :cond_0
    const-string v1, "Stopping DHCP and clearing IP"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2655
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->HOTSPOT_ENABLED:Z

    if-eqz v1, :cond_1

    .line 2656
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->resetWISPRLoginClient()V

    .line 2660
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->stopDhcp()V

    .line 2663
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 2664
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2670
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 2671
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2672
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 2673
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 2674
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2675
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 2676
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 2678
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2679
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 2682
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->clearLinkProperties()V

    .line 2685
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 2687
    iput-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 2688
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 2689
    return-void

    .line 2665
    :catch_0
    move-exception v0

    .line 2666
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleScreenStateChanged(Z)V
    .locals 6
    .param p1, "screenOn"    # Z

    .prologue
    const v5, 0x20056

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScreenStateChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 2021
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    if-eqz v0, :cond_0

    .line 2022
    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 2025
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    if-ne p1, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->updateScreenState(Z)V

    .line 2026
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 2027
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2028
    if-eqz p1, :cond_5

    .line 2029
    invoke-virtual {p0, v5, v2, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 2036
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScreenBroadcastReceived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2037
    return-void

    :cond_3
    move v0, v2

    .line 2022
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2025
    goto :goto_1

    .line 2032
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2033
    invoke-virtual {p0, v5, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    goto :goto_2
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpResults;)V
    .locals 6
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 2791
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2792
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 2793
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2794
    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 2795
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2796
    iget-object v2, p1, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    .line 2797
    .local v2, "linkProperties":Landroid/net/LinkProperties;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfigStore;->setLinkProperties(ILandroid/net/LinkProperties;)V

    .line 2798
    const/4 v0, 0x0

    .line 2799
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2800
    .local v1, "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2801
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "addr":Ljava/net/InetAddress;
    check-cast v0, Ljava/net/InetAddress;

    .line 2803
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 2804
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpResults;->hasMeteredHint()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 2805
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updateLinkProperties()V

    .line 2807
    if-eqz v0, :cond_1

    .line 2808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling ARP set with IP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2809
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->stopFilteringARPPackets(Ljava/lang/String;)Z

    .line 2812
    :cond_1
    return-void

    .line 2795
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2    # "linkProperties":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private handleSupplicantConnectionLoss()V
    .locals 2

    .prologue
    .line 2695
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 2697
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V

    .line 2698
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    .line 2699
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    .line 2700
    return-void
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2619
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 2620
    .local v1, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 2625
    .local v0, "state":Landroid/net/wifi/SupplicantState;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 2627
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2628
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 2633
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2634
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 2636
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 2638
    return-object v0

    .line 2630
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0
.end method

.method private handleWISPRLoginFailed(I)V
    .locals 4
    .param p1, "notifType"    # I

    .prologue
    .line 2913
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    if-nez v0, :cond_0

    .line 2938
    :goto_0
    return-void

    .line 2917
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiWisprClient;->setHotSpotNotification(IZ)V

    .line 2918
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z

    .line 2919
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationRepeatTime:J

    .line 2921
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2922
    const-string v0, "WifiStateMachine"

    const-string v1, "Reconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 2926
    monitor-enter p0

    .line 2927
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 2928
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2930
    :cond_1
    const-string v0, "WifiStateMachine"

    const-string v1, "Disconnecting Hot Spot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    .line 2934
    monitor-enter p0

    .line 2935
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 2936
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private initializeCountryDetectorAndCheckCountry()V
    .locals 3

    .prologue
    .line 842
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    if-nez v0, :cond_0

    .line 843
    const-string/jumbo v0, "need to initialize CountryDetector"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    .line 845
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    if-eqz v0, :cond_0

    .line 846
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleAPMStateChange()V

    .line 847
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCountryListener:Landroid/location/CountryListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 850
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    if-eqz v0, :cond_1

    .line 851
    const-string v0, "CountryDetector initialized - checking"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCountryListener:Landroid/location/CountryListener;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/location/CountryListener;->onCountryDetected(Landroid/location/Country;)V

    .line 854
    :cond_1
    return-void
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2111
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2113
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 2114
    .local v6, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2115
    .local v3, "intf":Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2116
    .local v5, "regex":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2117
    const/4 v7, 0x1

    .line 2122
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :goto_1
    return v7

    .line 2115
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "intf":Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2122
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "intf":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private noteBatchedScanStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1471
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    if-eq v1, v2, :cond_1

    .line 1475
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1480
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 1485
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 1487
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1488
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1492
    :goto_1
    return-void

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1479
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1480
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    goto :goto_0

    .line 1479
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1480
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    throw v1

    .line 1489
    :catch_1
    move-exception v0

    .line 1490
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private noteBatchedScanStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1495
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_0

    .line 1497
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1502
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    .line 1505
    :cond_0
    :goto_0
    return-void

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1501
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1502
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    goto :goto_0

    .line 1501
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1502
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mNotedBatchedScanCsph:I

    throw v1
.end method

.method private noteScanEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1458
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-eqz v1, :cond_0

    .line 1460
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    throw v1
.end method

.method private noteScanStart(ILandroid/os/WorkSource;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1447
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    .line 1448
    :cond_0
    if-eqz p2, :cond_2

    .end local p2    # "workSource":Landroid/os/WorkSource;
    :goto_0
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    .line 1450
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    :cond_1
    :goto_1
    return-void

    .line 1448
    .restart local p2    # "workSource":Landroid/os/WorkSource;
    :cond_2
    new-instance p2, Landroid/os/WorkSource;

    .end local p2    # "workSource":Landroid/os/WorkSource;
    invoke-direct {p2, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_0

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifyDisconnectP2pConnection(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5272
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 5273
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104066e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104066d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040440

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/WifiStateMachine$12;

    invoke-direct {v4, p0, p1}, Landroid/net/wifi/WifiStateMachine$12;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040441

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/WifiStateMachine$11;

    invoke-direct {v4, p0}, Landroid/net/wifi/WifiStateMachine$11;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/WifiStateMachine$10;

    invoke-direct {v3, p0}, Landroid/net/wifi/WifiStateMachine$10;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 5296
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 5297
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5298
    return-void
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 5250
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5251
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 5252
    return-object v0
.end method

.method private parseP2pDeviceFromWifiScanResult()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5311
    .local v2, "scanP2pDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 5312
    .local v1, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v4, "DIRECT-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5313
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-direct {v3, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5315
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    return-object v2
.end method

.method private recordBatchedScanSettings(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "responsibleUid"    # I
    .param p2, "csph"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1218
    const-string v3, "batched_settings"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/BatchedScanSettings;

    .line 1219
    .local v1, "settings":Landroid/net/wifi/BatchedScanSettings;
    const-string v3, "batched_worksource"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1222
    .local v0, "responsibleWorkSource":Landroid/os/WorkSource;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set batched scan to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", worksource="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1225
    if-eqz v1, :cond_1

    .line 1226
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1234
    :cond_0
    :goto_0
    return v2

    .line 1228
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v3, :cond_0

    .line 1230
    :cond_2
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    .line 1231
    if-nez v0, :cond_3

    new-instance v0, Landroid/os/WorkSource;

    .end local v0    # "responsibleWorkSource":Landroid/os/WorkSource;
    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1232
    .restart local v0    # "responsibleWorkSource":Landroid/os/WorkSource;
    :cond_3
    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanWorkSource:Landroid/os/WorkSource;

    .line 1233
    iput p2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanCsph:I

    .line 1234
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 5221
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 5225
    :goto_0
    return-void

    .line 5222
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 5223
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 5224
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 5228
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 5233
    :goto_0
    return-void

    .line 5229
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 5230
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 5231
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 5232
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 5236
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 5241
    :goto_0
    return-void

    .line 5237
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 5238
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 5239
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5240
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetWISPRLoginClient()V
    .locals 4

    .prologue
    .line 2895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationRepeatTime:J

    .line 2897
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    sget v0, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2898
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    .line 2899
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mNotificationShown:Z

    .line 2901
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/net/wifi/WifiWisprClient;->checkIfHotSpot(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2909
    :cond_1
    :goto_0
    return-void

    .line 2905
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    if-eqz v0, :cond_1

    .line 2906
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWisprClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2907
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    goto :goto_0
.end method

.method private restartSoftApIfOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5257
    const-string v0, "WifiStateMachine"

    const-string v1, "Disabling wifi ap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5258
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5259
    const-string v0, "WifiStateMachine"

    const-string v1, "Enabling wifi ap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 5261
    const-string v0, "WifiStateMachine"

    const-string v1, "Restart softap Done"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5262
    return-void
.end method

.method private retrieveBatchedScanData()V
    .locals 33

    .prologue
    .line 1297
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v27

    .line 1299
    .local v27, "rawData":Ljava/lang/String;
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 1300
    if-eqz v27, :cond_0

    const-string v3, "OK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1301
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected BatchedScanResults :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1438
    :goto_0
    return-void

    .line 1305
    :cond_1
    const/16 v28, 0x0

    .line 1306
    .local v28, "scanCount":I
    const-string v16, "----"

    .line 1307
    .local v16, "END_OF_BATCHES":Ljava/lang/String;
    const-string/jumbo v17, "scancount="

    .line 1308
    .local v17, "SCANCOUNT":Ljava/lang/String;
    const-string/jumbo v18, "trunc"

    .line 1309
    .local v18, "TRUNCATED":Ljava/lang/String;
    const-string v13, "age="

    .line 1310
    .local v13, "AGE":Ljava/lang/String;
    const-string v14, "dist="

    .line 1311
    .local v14, "DIST":Ljava/lang/String;
    const-string v15, "distSd="

    .line 1313
    .local v15, "DISTSD":Ljava/lang/String;
    const-string v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1314
    .local v29, "splitData":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 1315
    .local v23, "n":I
    aget-object v3, v29, v23

    const-string/jumbo v6, "scancount="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1317
    add-int/lit8 v24, v23, 0x1

    .end local v23    # "n":I
    .local v24, "n":I
    :try_start_0
    aget-object v3, v29, v23

    const-string/jumbo v6, "scancount="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v28

    move/from16 v23, v24

    .line 1322
    .end local v24    # "n":I
    .restart local v23    # "n":I
    :goto_1
    if-nez v28, :cond_3

    .line 1323
    const-string/jumbo v3, "scanCount==0 - aborting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1318
    .end local v23    # "n":I
    .restart local v24    # "n":I
    :catch_0
    move-exception v21

    .line 1319
    .local v21, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scancount parseInt Exception from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v24

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move/from16 v23, v24

    .line 1320
    .end local v24    # "n":I
    .restart local v23    # "n":I
    goto :goto_1

    .line 1321
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string/jumbo v3, "scancount not found"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1327
    :cond_3
    new-instance v22, Landroid/content/Intent;

    const-string v3, "android.net.wifi.BATCHED_RESULTS"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v22, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 1331
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1332
    new-instance v19, Landroid/net/wifi/BatchedScanResult;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 1334
    .local v19, "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    const/4 v5, 0x0

    .line 1335
    .local v5, "bssid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1336
    .local v4, "wifiSsid":Landroid/net/wifi/WifiSsid;
    const/4 v7, 0x0

    .line 1337
    .local v7, "level":I
    const/4 v8, 0x0

    .line 1339
    .local v8, "freq":I
    const-wide/16 v9, 0x0

    .line 1340
    .local v9, "tsf":J
    const/4 v12, -0x1

    .local v12, "distSd":I
    move v11, v12

    .line 1341
    .local v11, "dist":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    .line 1342
    .local v25, "now":J
    const-string v3, "bssid="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    .line 1345
    .local v20, "bssidStrLen":I
    :goto_2
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_14

    .line 1347
    aget-object v3, v29, v23

    const-string v6, "----"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1348
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, v29

    array-length v6, v0

    if-eq v3, v6, :cond_4

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didn\'t consume "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    array-length v6, v0

    sub-int v6, v6, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1351
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1354
    :cond_5
    const-string/jumbo v3, "retrieveBatchedScanResults X"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 1355
    monitor-exit v30

    goto/16 :goto_0

    .line 1442
    .end local v4    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .end local v5    # "bssid":Ljava/lang/String;
    .end local v7    # "level":I
    .end local v8    # "freq":I
    .end local v9    # "tsf":J
    .end local v11    # "dist":I
    .end local v12    # "distSd":I
    .end local v19    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    .end local v20    # "bssidStrLen":I
    .end local v25    # "now":J
    :catchall_0
    move-exception v3

    monitor-exit v30
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1357
    .restart local v4    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    .restart local v5    # "bssid":Ljava/lang/String;
    .restart local v7    # "level":I
    .restart local v8    # "freq":I
    .restart local v9    # "tsf":J
    .restart local v11    # "dist":I
    .restart local v12    # "distSd":I
    .restart local v19    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    .restart local v20    # "bssidStrLen":I
    .restart local v25    # "now":J
    :cond_6
    :try_start_2
    aget-object v3, v29, v23

    const-string v6, "####"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, v29, v23

    const-string v6, "===="

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1358
    :cond_7
    if-eqz v5, :cond_8

    .line 1359
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    move-object/from16 v31, v0

    new-instance v3, Landroid/net/wifi/ScanResult;

    const-string v6, ""

    invoke-direct/range {v3 .. v12}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    const/4 v4, 0x0

    .line 1362
    const/4 v5, 0x0

    .line 1363
    const/4 v7, 0x0

    .line 1364
    const/4 v8, 0x0

    .line 1365
    const-wide/16 v9, 0x0

    .line 1366
    const/4 v12, -0x1

    move v11, v12

    .line 1368
    :cond_8
    aget-object v3, v29, v23

    const-string v6, "####"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1369
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_a

    .line 1370
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    new-instance v19, Landroid/net/wifi/BatchedScanResult;

    .end local v19    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 1424
    .restart local v19    # "batchedScanResult":Landroid/net/wifi/BatchedScanResult;
    :cond_9
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 1373
    :cond_a
    const-string v3, "Found empty batch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 1376
    :cond_b
    aget-object v3, v29, v23

    const-string/jumbo v6, "trunc"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1377
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    goto :goto_3

    .line 1378
    :cond_c
    aget-object v3, v29, v23

    const-string v6, "bssid="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1379
    new-instance v5, Ljava/lang/String;

    .end local v5    # "bssid":Ljava/lang/String;
    aget-object v3, v29, v23

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v6, v20

    move/from16 v0, v20

    invoke-direct {v5, v3, v0, v6}, Ljava/lang/String;-><init>([BII)V

    .restart local v5    # "bssid":Ljava/lang/String;
    goto :goto_3

    .line 1381
    :cond_d
    aget-object v3, v29, v23

    const-string v6, "freq="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_e

    .line 1383
    :try_start_3
    aget-object v3, v29, v23

    const-string v6, "freq="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v8

    goto :goto_3

    .line 1384
    :catch_1
    move-exception v21

    .line 1385
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid freqency: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1386
    const/4 v8, 0x0

    .line 1387
    goto :goto_3

    .line 1388
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    aget-object v3, v29, v23

    const-string v6, "age="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_f

    .line 1390
    :try_start_5
    aget-object v3, v29, v23

    const-string v6, "age="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v31

    sub-long v9, v25, v31

    .line 1391
    const-wide/16 v31, 0x3e8

    mul-long v9, v9, v31

    goto/16 :goto_3

    .line 1392
    :catch_2
    move-exception v21

    .line 1393
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid timestamp: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1394
    const-wide/16 v9, 0x0

    .line 1395
    goto/16 :goto_3

    .line 1396
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    aget-object v3, v29, v23

    const-string/jumbo v6, "ssid="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1397
    aget-object v3, v29, v23

    const-string/jumbo v6, "ssid="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v4

    goto/16 :goto_3

    .line 1399
    :cond_10
    aget-object v3, v29, v23

    const-string v6, "level="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v3

    if-eqz v3, :cond_11

    .line 1401
    :try_start_7
    aget-object v3, v29, v23

    const-string v6, "level="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    .line 1402
    if-lez v7, :cond_9

    add-int/lit16 v7, v7, -0x100

    goto/16 :goto_3

    .line 1403
    :catch_3
    move-exception v21

    .line 1404
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid level: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1405
    const/4 v7, 0x0

    .line 1406
    goto/16 :goto_3

    .line 1407
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    aget-object v3, v29, v23

    const-string v6, "dist="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v3

    if-eqz v3, :cond_12

    .line 1409
    :try_start_9
    aget-object v3, v29, v23

    const-string v6, "dist="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v11

    goto/16 :goto_3

    .line 1410
    :catch_4
    move-exception v21

    .line 1411
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid distance: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1412
    const/4 v11, -0x1

    .line 1413
    goto/16 :goto_3

    .line 1414
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_12
    aget-object v3, v29, v23

    const-string v6, "distSd="

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v3

    if-eqz v3, :cond_13

    .line 1416
    :try_start_b
    aget-object v3, v29, v23

    const-string v6, "distSd="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v12

    goto/16 :goto_3

    .line 1417
    :catch_5
    move-exception v21

    .line 1418
    .restart local v21    # "e":Ljava/lang/NumberFormatException;
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid distanceSd: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1419
    const/4 v12, -0x1

    .line 1420
    goto/16 :goto_3

    .line 1422
    .end local v21    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse batched scan result line: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v29, v23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1426
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->getBatchedScanResults()Ljava/lang/String;

    move-result-object v27

    .line 1428
    if-nez v27, :cond_15

    .line 1429
    const-string v3, "Unexpected null BatchedScanResults"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1430
    monitor-exit v30

    goto/16 :goto_0

    .line 1432
    :cond_15
    const-string v3, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1433
    move-object/from16 v0, v29

    array-length v3, v0

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    aget-object v3, v29, v3

    const-string/jumbo v6, "ok"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1434
    :cond_16
    const-string v3, "batch scan results just ended!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 1436
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1438
    :cond_17
    monitor-exit v30
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 1440
    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_2
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 2583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2584
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2585
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2586
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2587
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 7
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2565
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2567
    const-string/jumbo v0, "networkInfo"

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2568
    const-string v0, "linkProperties"

    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2569
    if-eqz p1, :cond_0

    .line 2570
    const-string v0, "bssid"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2571
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_2

    .line 2573
    :cond_1
    const-string/jumbo v0, "wifiInfo"

    new-instance v1, Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2575
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2577
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v5, Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v5, v2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/wifi/WifiMetrics;->logWifiStateChange(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/wifi/WifiInfo;)V

    .line 2580
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 3
    .param p1, "newRssi"    # I

    .prologue
    .line 2547
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2548
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2549
    const-string/jumbo v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2550
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2551
    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 3

    .prologue
    .line 2540
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteScanEnd()V

    .line 2541
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2542
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2543
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2544
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 2590
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2591
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2592
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2593
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2594
    return-void
.end method

.method private sendWifiRoamBroadcast(Ljava/lang/String;)V
    .locals 4
    .param p1, "newBssid"    # Ljava/lang/String;

    .prologue
    .line 2555
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.net.wifi.WIFI_ROAM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2556
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2557
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2558
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending broadcast - WifiManager.WIFI_ROAM_ACTION - newBssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2561
    return-void
.end method

.method private setCountryCode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2129
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "^\\s*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2133
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 2139
    :goto_0
    return-void

    .line 2137
    :cond_0
    const-string v1, "US"

    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setFrequencyBand()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2146
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_frequency_band"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1110016

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2151
    .local v0, "band":I
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 2152
    return-void

    .line 2146
    .end local v0    # "band":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2606
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    if-eqz v0, :cond_0

    .line 2607
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->updateWifiStatsonNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo;)V

    .line 2608
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 2609
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    :cond_1
    return-void
.end method

.method private setNextBatchedAlarm(I)V
    .locals 8
    .param p1, "scansExpected"    # I

    .prologue
    const/4 v7, 0x0

    .line 1246
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1248
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v4, v4, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanMinPollTime:J

    .line 1251
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v2, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    if-ge v2, p1, :cond_2

    .line 1252
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget p1, v2, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 1255
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v1, v2, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 1256
    .local v1, "secToFull":I
    mul-int/2addr v1, p1

    .line 1258
    const-string/jumbo v2, "wifi.batchedScan.pollPeriod"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1259
    .local v0, "debugPeriod":I
    if-lez v0, :cond_3

    move v1, v0

    .line 1263
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    iget v5, v5, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setScanResults()V
    .locals 30

    .prologue
    .line 2262
    const-string v4, ""

    .line 2263
    .local v4, "bssid":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2264
    .local v6, "level":I
    const/4 v7, 0x0

    .line 2265
    .local v7, "freq":I
    const-wide/16 v8, 0x0

    .line 2266
    .local v8, "tsf":J
    const-string v5, ""

    .line 2267
    .local v5, "flags":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2270
    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 2271
    .local v23, "scanResultsBuf":Ljava/lang/StringBuffer;
    const/16 v24, 0x0

    .line 2274
    .local v24, "sid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->scanResults(I)Ljava/lang/String;

    move-result-object v26

    .line 2275
    .local v26, "tmpResults":Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 2295
    :goto_0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2296
    .local v22, "scanResults":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 2370
    :goto_1
    return-void

    .line 2276
    .end local v22    # "scanResults":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2277
    const-string v27, "\n"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2278
    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2279
    .local v21, "lines":[Ljava/lang/String;
    const/16 v24, -0x1

    .line 2280
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v16, v27, -0x1

    .local v16, "i":I
    :goto_2
    if-ltz v16, :cond_2

    .line 2281
    aget-object v27, v21, v16

    const-string v28, "####"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 2292
    :cond_2
    :goto_3
    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2283
    :cond_3
    aget-object v27, v21, v16

    const-string v28, "id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 2285
    :try_start_0
    aget-object v27, v21, v16

    const-string v28, "id="

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v27

    add-int/lit8 v24, v27, 0x1

    goto :goto_3

    .line 2280
    :cond_4
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    .line 2303
    .end local v16    # "i":I
    .end local v21    # "lines":[Ljava/lang/String;
    .restart local v22    # "scanResults":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 2304
    :try_start_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    .line 2305
    const-string v27, "\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2306
    .restart local v21    # "lines":[Ljava/lang/String;
    const-string v27, "bssid="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v12

    .line 2307
    .local v12, "bssidStrLen":I
    const-string v27, "flags="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v14

    .line 2309
    .local v14, "flagLen":I
    move-object/from16 v10, v21

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    aget-object v20, v10, v17

    .line 2310
    .local v20, "line":Ljava/lang/String;
    const-string v27, "bssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 2311
    new-instance v11, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v29

    sub-int v29, v29, v12

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v11, v0, v12, v1}, Ljava/lang/String;-><init>([BII)V

    .end local v4    # "bssid":Ljava/lang/String;
    .local v11, "bssid":Ljava/lang/String;
    move-object v4, v11

    .line 2309
    .end local v11    # "bssid":Ljava/lang/String;
    .restart local v4    # "bssid":Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2312
    :cond_7
    const-string v27, "freq="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v27

    if-eqz v27, :cond_8

    .line 2314
    :try_start_2
    const-string v27, "freq="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    goto :goto_5

    .line 2315
    :catch_0
    move-exception v13

    .line 2316
    .local v13, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 2317
    goto :goto_5

    .line 2318
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    :try_start_3
    const-string v27, "level="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v27

    if-eqz v27, :cond_9

    .line 2320
    :try_start_4
    const-string v27, "level="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    .line 2324
    if-lez v6, :cond_6

    add-int/lit16 v6, v6, -0x100

    goto :goto_5

    .line 2325
    :catch_1
    move-exception v13

    .line 2326
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    .line 2327
    goto :goto_5

    .line 2328
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_5
    const-string/jumbo v27, "tsf="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v27

    if-eqz v27, :cond_a

    .line 2330
    :try_start_6
    const-string/jumbo v27, "tsf="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v8

    goto :goto_5

    .line 2331
    :catch_2
    move-exception v13

    .line 2332
    .restart local v13    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v8, 0x0

    .line 2333
    goto :goto_5

    .line 2334
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_7
    const-string v27, "flags="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 2335
    new-instance v15, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v29

    sub-int v29, v29, v14

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v15, v0, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .end local v5    # "flags":Ljava/lang/String;
    .local v15, "flags":Ljava/lang/String;
    move-object v5, v15

    .end local v15    # "flags":Ljava/lang/String;
    .restart local v5    # "flags":Ljava/lang/String;
    goto/16 :goto_5

    .line 2336
    :cond_b
    const-string/jumbo v27, "ssid="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 2337
    const-string/jumbo v27, "ssid="

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    goto/16 :goto_5

    .line 2339
    :cond_c
    const-string v27, "===="

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_d

    const-string v27, "####"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 2340
    :cond_d
    if-eqz v4, :cond_e

    .line 2341
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v25

    .line 2342
    .local v25, "ssid":Ljava/lang/String;
    :goto_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2343
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 2344
    .local v2, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v2, :cond_11

    .line 2345
    iput v6, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 2346
    iput-object v3, v2, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2348
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v27

    :goto_7
    move-object/from16 v0, v27

    iput-object v0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2350
    iput-object v5, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2351
    iput v7, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2352
    iput-wide v8, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 2359
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2361
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v18    # "key":Ljava/lang/String;
    .end local v25    # "ssid":Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    .line 2362
    const/4 v6, 0x0

    .line 2363
    const/4 v7, 0x0

    .line 2364
    const-wide/16 v8, 0x0

    .line 2365
    const-string v5, ""

    .line 2366
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 2341
    :cond_f
    const-string v25, "<unknown ssid>"

    goto :goto_6

    .line 2348
    .restart local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v18    # "key":Ljava/lang/String;
    .restart local v25    # "ssid":Ljava/lang/String;
    :cond_10
    const-string v27, "<unknown ssid>"

    goto :goto_7

    .line 2354
    :cond_11
    new-instance v2, Landroid/net/wifi/ScanResult;

    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 2357
    .restart local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2369
    .end local v2    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "bssidStrLen":I
    .end local v14    # "flagLen":I
    .end local v17    # "i$":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "len$":I
    .end local v20    # "line":Ljava/lang/String;
    .end local v21    # "lines":[Ljava/lang/String;
    .end local v25    # "ssid":Ljava/lang/String;
    :catchall_0
    move-exception v27

    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v27

    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v12    # "bssidStrLen":I
    .restart local v14    # "flagLen":I
    .restart local v17    # "i$":I
    .restart local v19    # "len$":I
    .restart local v21    # "lines":[Ljava/lang/String;
    :cond_12
    :try_start_8
    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2286
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v12    # "bssidStrLen":I
    .end local v14    # "flagLen":I
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "scanResults":Ljava/lang/String;
    .restart local v16    # "i":I
    :catch_3
    move-exception v27

    goto/16 :goto_3
.end method

.method private setSuspendOptimizations(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2170
    if-eqz p2, :cond_0

    .line 2171
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2175
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2176
    return-void

    .line 2173
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    goto :goto_0
.end method

.method private setSuspendOptimizationsNative(IZ)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSuspendOptimizationsNative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2156
    if-eqz p2, :cond_1

    .line 2157
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2159
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    .line 2164
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizations(Z)Z

    goto :goto_0
.end method

.method private setWifiApState(I)V
    .locals 5
    .param p1, "wifiApState"    # I

    .prologue
    .line 2207
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2210
    .local v2, "previousWifiApState":I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_1

    .line 2211
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2220
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2224
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2225
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2226
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2227
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2228
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2229
    return-void

    .line 2212
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 2213
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .param p1, "wifiState"    # I

    .prologue
    .line 2179
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 2182
    .local v2, "previousWifiState":I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 2183
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    .line 2188
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    if-eqz v3, :cond_1

    .line 2189
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    invoke-virtual {v3, p1}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->updateWifiStatsonStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2199
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2200
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2201
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2202
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2203
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2204
    return-void

    .line 2184
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 2185
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2191
    :catch_0
    move-exception v0

    .line 2192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startBatchedScan()V
    .locals 4

    .prologue
    .line 1158
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    if-nez v2, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    if-eqz v2, :cond_2

    .line 1161
    const-string/jumbo v2, "not starting Batched Scans due to DHCP"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1168
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1170
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanSettings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "scansExpected":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    .line 1173
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 1174
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    if-lez v2, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteBatchedScanStart()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing WifiNative.setBatchedScanSettings response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startNextBatchedScan()V
    .locals 1

    .prologue
    .line 1188
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1190
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mExpectedBatchedScans:I

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setNextBatchedAlarm(I)V

    .line 1191
    return-void
.end method

.method private startNextBatchedScanAsync()V
    .locals 1

    .prologue
    .line 1183
    const v0, 0x2008d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1184
    return-void
.end method

.method private startScanNative(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1508
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->scan(I)Z

    .line 1509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 1510
    return-void
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2848
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$9;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$9;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2871
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 2047
    const/4 v8, 0x0

    .line 2049
    .local v8, "wifiAvailable":Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2051
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 2053
    .local v9, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2054
    .local v5, "intf":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 2055
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2057
    const/4 v4, 0x0

    .line 2059
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 2060
    if-eqz v4, :cond_1

    .line 2062
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2064
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 2066
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2073
    :cond_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 2074
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2083
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v5    # "intf":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :cond_2
    :goto_1
    return v10

    .line 2068
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    .restart local v5    # "intf":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2069
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2077
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 2078
    const/4 v10, 0x1

    goto :goto_1

    .line 2054
    .end local v4    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private startWISPRLoginClient()V
    .locals 4

    .prologue
    .line 2879
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WISPR Client Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2880
    .local v1, "wisprThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 2881
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2882
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 2885
    new-instance v2, Landroid/net/wifi/WifiWisprClient;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, v0}, Landroid/net/wifi/WifiWisprClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    .line 2887
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWisprClient;->startLogin()V

    .line 2889
    :cond_0
    return-void
.end method

.method private stopBatchedScan()V
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1239
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->retrieveBatchedScanData()V

    .line 1240
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;

    .line 1241
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->noteBatchedScanStop()V

    .line 1242
    return-void
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 2088
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 2092
    const/4 v1, 0x0

    .line 2094
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 2095
    if-eqz v1, :cond_0

    .line 2096
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2098
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2104
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2105
    const-string v2, "Untether initiate failed!"

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2107
    :cond_1
    return-void

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLinkProperties()V
    .locals 7

    .prologue
    .line 2472
    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    .line 2475
    .local v3, "newLp":Landroid/net/LinkProperties;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2476
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 2479
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mNetlinkLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 2483
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2486
    :try_start_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v5, v5, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v5, :cond_2

    .line 2487
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    iget-object v2, v5, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    .line 2488
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 2489
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_0

    .line 2496
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "route":Landroid/net/RouteInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2491
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2492
    .local v0, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 2494
    .end local v0    # "dns":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 2496
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link configuration changed for netId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2505
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2506
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_3

    .line 2507
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 2510
    :cond_3
    return-void
.end method


# virtual methods
.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1781
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1782
    return-void
.end method

.method calcalateAndApplyScanInterval(Z)V
    .locals 6
    .param p1, "deviceStationary"    # Z

    .prologue
    .line 5327
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiScanDeviceStationary:Z

    .line 5328
    if-nez p1, :cond_1

    .line 5329
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 5337
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 5338
    .local v0, "mWifiState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_2

    .line 5344
    :cond_0
    :goto_1
    return-void

    .line 5334
    .end local v0    # "mWifiState":Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    goto :goto_0

    .line 5341
    .restart local v0    # "mWifiState":Landroid/net/NetworkInfo$DetailedState;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->scan(I)Z

    goto :goto_1
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 1662
    const v0, 0x20014

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1663
    return-void
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 1789
    const v0, 0x20039

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1790
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 1690
    const v0, 0x20049

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1691
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1993
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/SupplicantStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDhcpResults "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSignalLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastBssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastNetworkId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mReconnectCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOperationalMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserWantsSuspendOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mUserWantsSuspendOpt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSuspendOptNeedsDisabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendOptNeedsDisabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supplicant status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnableBackgroundScan "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastSetCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPersistedCountryCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPersistedCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2011
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiConfigStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2012
    return-void
.end method

.method public dumpDriverDxeSnapShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5364
    const v0, 0x20089

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5365
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 1801
    const v0, 0x20037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1802
    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1797
    const v2, 0x2005b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1798
    return-void

    :cond_0
    move v0, v1

    .line 1797
    goto :goto_0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1793
    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1794
    return-void

    :cond_0
    move v0, v1

    .line 1793
    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1900
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 1901
    .local v0, "enabler":I
    :goto_0
    const v2, 0x2005c

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1902
    return-void

    .end local v0    # "enabler":I
    :cond_0
    move v0, v1

    .line 1900
    goto :goto_0
.end method

.method public getAssociatedFrequency()I
    .locals 1

    .prologue
    .line 5266
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getAssocFrequency()I

    move-result v0

    return v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1105
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getOperatingFrequencyBand()I
    .locals 5

    .prologue
    const/16 v4, 0x9b4

    .line 1913
    const/4 v1, 0x0

    .line 1914
    .local v1, "ret":I
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1915
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 1916
    if-nez v1, :cond_0

    .line 1917
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->getAssocFrequency()I

    move-result v0

    .line 1918
    .local v0, "freq":I
    if-le v0, v4, :cond_1

    .line 1919
    const/4 v1, 0x1

    .line 1925
    .end local v0    # "freq":I
    :cond_0
    :goto_0
    return v1

    .line 1920
    .restart local v0    # "freq":I
    :cond_1
    const/16 v2, 0x96c

    if-lt v0, v2, :cond_0

    if-gt v0, v4, :cond_0

    .line 1921
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getSapAutoChannelSelection()I
    .locals 2

    .prologue
    .line 1574
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getSapAutoChannelSelection()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1577
    :goto_0
    return v1

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in getSapOperatingChannel"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1577
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSapOperatingChannel()I
    .locals 2

    .prologue
    .line 1562
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getSapOperatingChannel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1565
    :goto_0
    return v1

    .line 1563
    :catch_0
    move-exception v0

    .line 1564
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in getSapOperatingChannel"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1565
    const/4 v1, -0x1

    goto :goto_0
.end method

.method handlePostDhcpSetup()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2769
    invoke-direct {p0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 2770
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 2772
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2300f

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2775
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 2778
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 2780
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->startBatchedScan()V

    .line 2783
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->startFilteringBroadcastPackets()Z

    .line 2786
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFilterInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2788
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2703
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpActive:Z

    .line 2704
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v1, :cond_0

    .line 2722
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 2730
    :cond_0
    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->setSuspendOptimizationsNative(IZ)V

    .line 2731
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 2733
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFilterInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2734
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->stopFilteringBroadcastPackets()Z

    .line 2737
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopBatchedScan()V

    .line 2740
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2741
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x2300f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2742
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 2743
    const v1, 0x30007

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2744
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2745
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 2746
    return-void
.end method

.method public isPreloadedNetworkAutoConnectSet()Z
    .locals 3

    .prologue
    .line 5354
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wifi_auto_connect_preloaded_nw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 1704
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1705
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 1697
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1698
    return-void
.end method

.method public reloadTlsNetworksAndReconnect()V
    .locals 1

    .prologue
    .line 1712
    const v0, 0x20091

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1713
    return-void
.end method

.method public requestBatchedScanPoll()V
    .locals 1

    .prologue
    .line 1154
    const v0, 0x2008e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1155
    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1939
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1940
    return-void
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "callingUid"    # I
    .param p3, "csph"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1137
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "batched_settings"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1138
    const-string v1, "batched_worksource"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1139
    const v1, 0x2008c

    invoke-virtual {p0, v1, p2, p3, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1140
    return-void
.end method

.method public setChannelRange(III)V
    .locals 3
    .param p1, "startchannel"    # I
    .param p2, "endchannel"    # I
    .param p3, "band"    # I

    .prologue
    .line 1550
    :try_start_0
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "setChannelRange"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/INetworkManagementService;->setChannelRange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    :goto_0
    return-void

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception in setChannelRange"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1870
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCountryCodeSequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1871
    .local v0, "countryCodeSequence":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1872
    const-string v1, "Ignoring resetting of country code"

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1876
    :goto_0
    return-void

    .line 1874
    :cond_0
    const v2, 0x20050

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setDriverLoggingParams(II)V
    .locals 1
    .param p1, "module"    # I
    .param p2, "level"    # I

    .prologue
    .line 5360
    const v0, 0x20088

    invoke-virtual {p0, v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5361
    return-void
.end method

.method public setDriverStart(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1654
    if-eqz p1, :cond_0

    .line 1655
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1659
    :goto_0
    return-void

    .line 1657
    :cond_0
    const v0, 0x2000e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 4
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1884
    if-eqz p2, :cond_0

    .line 1885
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1890
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20087

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 1893
    :cond_0
    const v0, 0x2005a

    invoke-virtual {p0, v0, p1, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1894
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1857
    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1858
    return-void

    :cond_0
    move v0, v1

    .line 1857
    goto :goto_0
.end method

.method public setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 1
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 1527
    if-eqz p2, :cond_0

    .line 1528
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1532
    :goto_0
    return-void

    .line 1530
    :cond_0
    const v0, 0x20018

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setOperationalMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting operational mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1670
    const v0, 0x20048

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1671
    return-void
.end method

.method public setPreloadedNetworkAutoConnect(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 5350
    const v0, 0x2005e

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5351
    return-void
.end method

.method public setSupplicantRunning(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1516
    if-eqz p1, :cond_0

    .line 1517
    const v0, 0x2000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1521
    :goto_0
    return-void

    .line 1519
    :cond_0
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1535
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 1536
    return-void
.end method

.method startDhcp()V
    .locals 2

    .prologue
    .line 2750
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-nez v0, :cond_0

    .line 2751
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 2755
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 2756
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2757
    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 4

    .prologue
    const v3, 0x20054

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1808
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1809
    invoke-virtual {p0, v3, v1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1811
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    invoke-virtual {p0, v3, v2, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1816
    :cond_0
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1835
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1837
    const v0, 0x20054

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1838
    return-void
.end method

.method public startScan(ILandroid/os/WorkSource;)V
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1126
    const v0, 0x20047

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 1127
    return-void
.end method

.method stopDhcp()V
    .locals 2

    .prologue
    .line 2760
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 2762
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 2763
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2765
    :cond_0
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const v2, 0x20055

    const/4 v1, 0x0

    .line 1822
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1823
    invoke-virtual {p0, v2, v1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1826
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1828
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1845
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV6Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1847
    const v0, 0x20055

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(III)V

    .line 1848
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1721
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1722
    .local v1, "resultMsg":Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1723
    .local v0, "result":I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1724
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I

    .prologue
    .line 1768
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 1769
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1770
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1771
    return v0

    .line 1769
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "netId"    # I
    .param p3, "disableOthers"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1754
    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 1756
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 1757
    .local v0, "result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1758
    return v0

    .end local v0    # "result":Z
    .end local v1    # "resultMsg":Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 1754
    goto :goto_0

    .restart local v1    # "resultMsg":Landroid/os/Message;
    :cond_1
    move v0, v4

    .line 1756
    goto :goto_1
.end method

.method public syncGetBatchedScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    monitor-enter v4

    .line 1144
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1146
    .local v0, "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatchedScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/BatchedScanResult;

    .line 1147
    .local v2, "result":Landroid/net/wifi/BatchedScanResult;
    new-instance v3, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {v3, v2}, Landroid/net/wifi/BatchedScanResult;-><init>(Landroid/net/wifi/BatchedScanResult;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1150
    .end local v0    # "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":Landroid/net/wifi/BatchedScanResult;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1149
    .restart local v0    # "batchedScanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1728
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1729
    .local v1, "resultMsg":Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1730
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1731
    return-object v0
.end method

.method public syncGetDhcpResults()Landroid/net/DhcpResults;
    .locals 3

    .prologue
    .line 1645
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResultsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1646
    :try_start_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-direct {v0, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    monitor-exit v1

    return-object v0

    .line 1647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1677
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 1678
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1679
    .local v2, "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1680
    .local v1, "result":Landroid/net/wifi/ScanResult;
    new-instance v3, Landroid/net/wifi/ScanResult;

    invoke-direct {v3, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1683
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1682
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "scanList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 1539
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1540
    .local v0, "resultMsg":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1541
    .local v1, "ret":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1542
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1631
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 1621
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 1623
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 1625
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 1627
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 1629
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 1619
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1604
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 1594
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 1596
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 1598
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 1600
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 1602
    :pswitch_4
    const-string/jumbo v0, "unknown state"

    goto :goto_0

    .line 1592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1111
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1112
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1113
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1114
    return v0

    .line 1112
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;
    .param p2, "networkId"    # I

    .prologue
    .line 1740
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 1741
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1742
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1743
    return v0

    .line 1741
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .param p1, "channel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 1950
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1951
    .local v1, "resultMsg":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1952
    .local v0, "result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1953
    return v0

    .line 1951
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "newSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1957
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    .line 1959
    if-eqz p1, :cond_0

    .line 1960
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1962
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_3

    .line 1963
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2

    .line 1966
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1967
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1969
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1985
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1989
    return-void

    .line 1973
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1974
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1975
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 1986
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1978
    :cond_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    .line 1980
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1981
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 1982
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1988
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method wifiScanSetDeviceStationary(Z)V
    .locals 2
    .param p1, "deviceStationary"    # Z

    .prologue
    .line 5322
    const v1, 0x20092

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 5323
    return-void

    .line 5322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
