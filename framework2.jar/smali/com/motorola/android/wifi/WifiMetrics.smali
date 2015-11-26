.class public final Lcom/motorola/android/wifi/WifiMetrics;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;,
        Lcom/motorola/android/wifi/WifiMetrics$WifiStats;,
        Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG:Z

.field private static final DXE_LOCKUP_ISSUE_TYPE:I = 0x1

.field private static final ID_CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final ID_DISCONNECT:Ljava/lang/String; = "DISCONNECT"

.field private static final LFR_ROAMING_METRICS:I = 0x3

.field private static final PARAMETER_BSSID:Ljava/lang/String; = "bssid_prefix"

.field private static final PARAMETER_BT:Ljava/lang/String; = "bluetooth"

.field private static final PARAMETER_LINK_SPEED:Ljava/lang/String; = "link_speed"

.field private static final PARAMETER_RSSI:Ljava/lang/String; = "rssi"

.field private static final PARAMETER_SSID:Ljava/lang/String; = "ssid"

.field private static final PARAMETER_SUPPLICANT_STATE:Ljava/lang/String; = "supplicant"

.field private static final PER_ISSUE_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiMetrics"

.field private static final TAG_BSSID:Ljava/lang/String; = "wifi_bssid"

.field private static final TAG_CAPTIVE_PORTAL_STATE:Ljava/lang/String; = "wifi_cap_port_state"

.field private static final TAG_CONNECT_DURATION:Ljava/lang/String; = "totalduration"

.field private static final TAG_DISPLAY_STATE:Ljava/lang/String; = "wifi_display_state"

.field private static final TAG_DNS:Ljava/lang/String; = "wifi_dns"

.field private static final TAG_DROP_BOX_TIME:Ljava/lang/String; = "wifi_dropbox_time"

.field private static final TAG_GW_IP:Ljava/lang/String; = "wifi_gw_add"

.field private static final TAG_ID_DRIVER_DXE_PROBLEM:Ljava/lang/String; = "WIFI_L2_TX_RX_ISSUE"

.field private static final TAG_ID_PER_ISSUE:Ljava/lang/String; = "WIFI_PER_THRESHOLD"

.field private static final TAG_ID_ROAM_ISSUE:Ljava/lang/String; = "WIFI_ROAM_ISSUES "

.field private static final TAG_IP_ADDR:Ljava/lang/String; = "wifi_ipv4"

.field private static final TAG_REASON_CODE:Ljava/lang/String; = "reason_code"

.field private static final TAG_ROAMING_STATE:Ljava/lang/String; = "wifi_roaming_state"

.field private static final TAG_ROAM_PERIOD:Ljava/lang/String; = "wifi_roam_period"

.field private static final TAG_ROAM_TRIES:Ljava/lang/String; = "wifi_roam_aps_count"

.field private static final TAG_RSSI:Ljava/lang/String; = "wifi_rssi"

.field private static final TAG_SECURTY_TYPE:Ljava/lang/String; = "wifi_security"

.field private static final TAG_SSID:Ljava/lang/String; = "wifi_ssid"

.field private static final TAG_TIME_AFTER_CONN:Ljava/lang/String; = "wifi_time_after_con"

.field private static final TAG_TIME_AFTER_WIFI_ON:Ljava/lang/String; = "wifi_time_after_turn_on"

.field private static final TAG_TIME_SINCE_LAST_STALL:Ljava/lang/String; = "wifi_laststall_timegap"

.field private static final TAG_TOTAL_CONN_TIME:Ljava/lang/String; = "wifi_total_con_time"

.field private static final TAG_TOTAL_WIFI_ON_TIME:Ljava/lang/String; = "wifi_total_wifi_enabled_time"

.field private static final TAG_WIFI_L1:Ljava/lang/String; = "MOT_WIFI_L1"

.field private static final VERSION_CONNECT:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_DISCONNECT:Ljava/lang/String; = "1.1"

.field private static final VERSION_DXE_EVENT:Ljava/lang/String; = "0.1"

.field private static final VERSION_LFR_EVENT:Ljava/lang/String; = "1.0"

.field private static final VERSION_PER_EVENT:Ljava/lang/String; = "0.1"

.field private static final WIFIMETRICS_LOG_WIFIMETRICS_EVENT:I = 0x1

.field private static final WIFI_STAT_VERSION:Ljava/lang/String; = "metrics.wifi.version"

.field private static mContext:Landroid/content/Context;

.field private static mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

.field private static mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

.field private static roamRetries:I


# instance fields
.field bssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dxeBlockupTime:J

.field private isConnectLogged:Z

.field private lfrReportTime:J

.field public mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field private mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private perReportTime:J

.field private roamingPeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/android/wifi/WifiMetrics;->DEBUG:Z

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    .line 132
    sput v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    .line 114
    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    .line 116
    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    .line 117
    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z

    .line 129
    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    .line 130
    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    .line 146
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 214
    sput-object p1, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiMetricsWorkerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    .line 217
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 218
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;-><init>(Lcom/motorola/android/wifi/WifiMetrics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    .line 219
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/wifi/WifiMetrics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiMetrics;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/wifi/WifiMetrics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiMetrics;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z

    return p1
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "wifi_info"    # Landroid/net/wifi/WifiInfo;
    .param p4, "bt_state"    # Ljava/lang/String;

    .prologue
    .line 493
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 495
    .local v6, "cr":Landroid/content/ContentResolver;
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/wifi/WifiMetrics$1;-><init>(Lcom/motorola/android/wifi/WifiMetrics;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 577
    return-void
.end method

.method private fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V
    .locals 12
    .param p1, "event"    # Lcom/motorola/android/provider/CheckinEvent;
    .param p2, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .param p3, "stallType"    # I

    .prologue
    .line 417
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v5

    .line 418
    .local v5, "timeStamp":J
    const-wide/16 v3, 0x0

    .line 419
    .local v3, "timeGapLastEvent":J
    sget-object v8, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 420
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 421
    .local v7, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 422
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    const/4 v8, 0x1

    if-ne p3, v8, :cond_5

    .line 423
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    .line 424
    :goto_0
    iput-wide v5, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    .line 434
    :cond_0
    :goto_1
    sget-boolean v8, Lcom/motorola/android/wifi/WifiMetrics;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 435
    if-nez v7, :cond_9

    .line 436
    const-string v8, "wifi_ssid"

    const-string v9, "none"

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v8, "wifi_bssid"

    const-string v9, "none"

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_1
    :goto_2
    const-string v9, "wifi_rssi"

    if-nez v7, :cond_d

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {p1, v9, v8}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 454
    const/4 v8, 0x3

    if-eq p3, v8, :cond_2

    .line 456
    if-nez v1, :cond_e

    const-string v0, "DNS empty"

    .line 458
    .local v0, "addr":Ljava/lang/String;
    :goto_4
    const-string v8, "wifi_dns"

    invoke-virtual {p1, v8, v0}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    if-nez v1, :cond_f

    const-string v0, "GW_ADDR empty"

    .line 461
    :goto_5
    const-string v8, "wifi_gw_add"

    invoke-virtual {p1, v8, v0}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    const-string v8, "wifi_cap_port_state"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 468
    const-string v8, "wifi_display_state"

    invoke-virtual {p2}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->getScreenState()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Z)V

    .line 470
    const-wide/16 v8, 0x3e8

    div-long/2addr v3, v8

    .line 471
    const-string v8, "wifi_laststall_timegap"

    invoke-virtual {p1, v8, v3, v4}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 472
    move-wide v3, v5

    .line 474
    const/4 v8, 0x3

    if-ne p3, v8, :cond_3

    .line 475
    const-string v8, "wifi_roam_aps_count"

    sget v9, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;I)V

    .line 476
    const-string v8, "wifi_roaming_state"

    iget-object v9, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    invoke-virtual {v9}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v8, "wifi_roam_period"

    iget-wide v9, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    invoke-virtual {p1, v8, v9, v10}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;J)V

    .line 480
    :cond_3
    return-void

    .line 423
    :cond_4
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    sub-long v3, v5, v8

    goto :goto_0

    .line 425
    :cond_5
    const/4 v8, 0x2

    if-ne p3, v8, :cond_7

    .line 426
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iget-wide v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    .line 427
    :goto_6
    iput-wide v5, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    goto :goto_1

    .line 426
    :cond_6
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    sub-long v3, v5, v8

    goto :goto_6

    .line 429
    :cond_7
    const/4 v8, 0x3

    if-ne p3, v8, :cond_0

    .line 430
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    iget-wide v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    .line 431
    :goto_7
    iput-wide v5, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    goto/16 :goto_1

    .line 430
    :cond_8
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    sub-long v3, v5, v8

    goto :goto_7

    .line 439
    :cond_9
    const-string v9, "wifi_ssid"

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    const-string v8, "none"

    :goto_8
    invoke-virtual {p1, v9, v8}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v8, 0x3

    if-ne p3, v8, :cond_b

    .line 442
    const-string v8, "wifi_bssid"

    iget-object v9, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 439
    :cond_a
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 446
    :cond_b
    const-string v9, "wifi_bssid"

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v8, "none"

    :goto_9
    invoke-virtual {p1, v9, v8}, Lcom/motorola/data/event/api/Event;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 452
    :cond_d
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    goto/16 :goto_3

    .line 456
    :cond_e
    iget v8, v1, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 459
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_f
    iget v8, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/wifi/WifiMetrics;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics;

    invoke-direct {v0, p0}, Lcom/motorola/android/wifi/WifiMetrics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    .line 225
    :cond_0
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;-><init>(Lcom/motorola/android/wifi/WifiMetrics;Lcom/motorola/android/wifi/WifiMetrics$1;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .line 228
    :cond_1
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    return-object v0
.end method

.method private logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/motorola/android/provider/CheckinEvent;

    .prologue
    .line 483
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 488
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    sput-object p0, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    .line 292
    return-void
.end method


# virtual methods
.method public getWifiStats()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    return-object v0
.end method

.method public logWifiStateChange(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/wifi/WifiInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "network_info"    # Landroid/net/NetworkInfo;
    .param p4, "link_properties"    # Landroid/net/LinkProperties;
    .param p5, "wifi_info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 249
    invoke-static {p1}, Lcom/motorola/android/wifi/WifiMetrics;->setContext(Landroid/content/Context;)V

    .line 251
    const-string v1, "na"

    .line 252
    .local v1, "bt_state":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 254
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 256
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    .line 258
    .local v2, "conn_state":I
    packed-switch v2, :pswitch_data_0

    .line 280
    .end local v2    # "conn_state":I
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 282
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 283
    const-string v4, "MOT_WIFI_L1"

    const-string v5, "CONNECT"

    invoke-direct {p0, v4, v5, p5, v1}, Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .restart local v2    # "conn_state":I
    :pswitch_0
    const-string v1, "connected"

    .line 261
    goto :goto_1

    .line 263
    :pswitch_1
    const-string v1, "connecting"

    .line 264
    goto :goto_1

    .line 266
    :pswitch_2
    const-string v1, "disconnecting"

    .line 267
    goto :goto_1

    .line 269
    :pswitch_3
    const-string v1, "disconnected"

    .line 270
    goto :goto_1

    .line 276
    .end local v2    # "conn_state":I
    :cond_3
    const-string v1, "off"

    goto :goto_1

    .line 285
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_4
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 286
    const-string v4, "MOT_WIFI_L1"

    const-string v5, "DISCONNECT"

    invoke-direct {p0, v4, v5, p5, v1}, Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reportDxeStall(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V
    .locals 6
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .prologue
    .line 401
    const-string v1, "metrics.wifi.version"

    const-string v2, "0.1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "version":Ljava/lang/String;
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_WIFI_L1"

    const-string v2, "WIFI_L2_TX_RX_ISSUE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 404
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/motorola/android/wifi/WifiMetrics;->fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V

    .line 405
    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/WifiMetrics;->logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 406
    return-void
.end method

.method public reportLFRmetrics(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;Ljava/lang/String;)V
    .locals 7
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .param p3, "lfrEvent"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 312
    const-string v1, "metrics.wifi.version"

    const-string v2, "1.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "version":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 320
    .local v6, "splitter":[Ljava/lang/String;
    array-length v1, v6

    if-lt v1, v4, :cond_0

    const-string v1, "PREAUTH_INIT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Init:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 323
    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 330
    :cond_0
    array-length v1, v6

    if-lt v1, v4, :cond_4

    const-string v1, "PREAUTH_STATUS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TRUE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 333
    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 383
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_3

    .line 386
    :cond_2
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_WIFI_L1"

    const-string v2, "WIFI_ROAM_ISSUES "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 388
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const/4 v1, 0x3

    invoke-direct {p0, v0, p2, v1}, Lcom/motorola/android/wifi/WifiMetrics;->fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V

    .line 389
    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/WifiMetrics;->logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 390
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_3

    .line 391
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 392
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 393
    const/4 v1, 0x0

    sput v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    .line 394
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 397
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :cond_3
    return-void

    .line 339
    :cond_4
    array-length v1, v6

    if-lt v1, v4, :cond_5

    const-string v1, "PREAUTH_STATUS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "FALSE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 341
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 342
    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 344
    sget v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    goto :goto_0

    .line 350
    :cond_5
    array-length v1, v6

    if-lt v1, v4, :cond_7

    const-string v1, "PREAUTH_HANDOVER"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "HANDOVER_CONNECT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 352
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 353
    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 358
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_1

    .line 359
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 361
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 364
    :goto_1
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    goto/16 :goto_0

    .line 363
    :cond_6
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    goto :goto_1

    .line 372
    :cond_7
    array-length v1, v6

    if-lt v1, v4, :cond_1

    const-string v1, "PREAUTH_HANDOVER"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HANDOVER_DISCONNECT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 375
    aget-object v1, v6, v4

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    goto/16 :goto_0
.end method

.method public reportPERIssue(Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V
    .locals 6
    .param p1, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .prologue
    .line 409
    const-string v1, "metrics.wifi.version"

    const-string v2, "0.1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "version":Ljava/lang/String;
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_WIFI_L1"

    const-string v2, "WIFI_PER_THRESHOLD"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 412
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/motorola/android/wifi/WifiMetrics;->fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V

    .line 413
    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/WifiMetrics;->logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 414
    return-void
.end method

.method public updateBssidlist(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventBssid"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "mTemp":I
    const-string v1, ""

    .line 300
    .local v1, "strTemp":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 304
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "strTemp":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 305
    .restart local v1    # "strTemp":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
