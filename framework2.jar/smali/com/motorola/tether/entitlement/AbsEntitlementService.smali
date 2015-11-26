.class public abstract Lcom/motorola/tether/entitlement/AbsEntitlementService;
.super Landroid/app/IntentService;
.source "AbsEntitlementService.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AbsEntitlementSvc"


# instance fields
.field private mBtTetherReset:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/tether/entitlement/AbsEntitlementService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/tether/entitlement/AbsEntitlementService;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService;->mBtTetherReset:Z

    return p1
.end method

.method private turnOffBluetoothTethering(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 43
    const-string v4, "AbsEntitlementSvc"

    const-string v5, "turnOffBluetoothTethering entered."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v4, "bluetooth.mTetherOn"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    .local v1, "btTetherOn":Z
    if-nez v1, :cond_1

    .line 46
    const-string v4, "AbsEntitlementSvc"

    const-string v5, "turnOffBluetoothTethering: exiting since btTetherOn is false."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 51
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 52
    .local v3, "monitor":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 57
    monitor-enter v3

    .line 58
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService;->mBtTetherReset:Z

    .line 59
    new-instance v4, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/motorola/tether/entitlement/AbsEntitlementService$1;-><init>(Lcom/motorola/tether/entitlement/AbsEntitlementService;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/Object;)V

    const/4 v5, 0x5

    invoke-virtual {v0, p1, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 84
    :goto_1
    iget-boolean v4, p0, Lcom/motorola/tether/entitlement/AbsEntitlementService;->mBtTetherReset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 87
    :try_start_1
    const-string v4, "AbsEntitlementSvc"

    const-string v5, "Waiting to turn off BT Tethering per Entitlement check reqmts."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "AbsEntitlementSvc"

    const-string v5, "monitor interrupted."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v4, "AbsEntitlementSvc"

    const-string v5, "turnOffBluetoothTethering: exiting."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private turnOffUsbTethering(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v2, "AbsEntitlementSvc"

    const-string v3, "turnOffUsbTethering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/tether/entitlement/EntitlementCheck;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "usbIface":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 104
    const-string v2, "AbsEntitlementSvc"

    const-string v3, "USB Tethering was ON. Turning OFF."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 108
    :cond_0
    return-void
.end method

.method private turnOffWifiTethering(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    const-string v3, "AbsEntitlementSvc"

    const-string v4, "turnOffWifiTethering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 113
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v3, "AbsEntitlementSvc"

    const-string v4, "Wifi Tethering was ON. Turn Off AP and restore Wifi if applicable."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 118
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 125
    :goto_1
    if-ne v2, v6, :cond_0

    .line 126
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 127
    const-string v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected turnOffAllTethering()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "AbsEntitlementSvc"

    const-string v1, "Turn off all tethering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0}, Lcom/motorola/tether/entitlement/EntitlementCheck;->resetEntitlementCheckState(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p0}, Lcom/motorola/tether/entitlement/AbsEntitlementService;->turnOffUsbTethering(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p0}, Lcom/motorola/tether/entitlement/AbsEntitlementService;->turnOffWifiTethering(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, p0}, Lcom/motorola/tether/entitlement/AbsEntitlementService;->turnOffBluetoothTethering(Landroid/content/Context;)V

    .line 40
    return-void
.end method
