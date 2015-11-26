.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$1;,
        Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$NetdResponseCode;
    }
.end annotation


# static fields
.field private static final ADD:Ljava/lang/String; = "add"

.field private static final ALLOW:Ljava/lang/String; = "allow"

.field private static final DBG:Z = false

.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final DENY:Ljava/lang/String; = "deny"

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final NETD_SOCKET_NAME:Ljava/lang/String; = "netd"

.field private static final NETD_TAG:Ljava/lang/String; = "NetdConnector"

.field private static final REMOVE:Ljava/lang/String; = "remove"

.field private static final SECONDARY:Ljava/lang/String; = "secondary"

.field private static final TAG:Ljava/lang/String; = "NetworkManagementService"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBandwidthControlEnabled:Z

.field private volatile mBlockDataTrafficInternal:Z

.field private mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private volatile mFirewallEnabled:Z

.field private mIdleTimerLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mQuotaLock:Ljava/lang/Object;

.field private final mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

.field private mThread:Ljava/lang/Thread;

.field private mUidRejectOnQuota:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "socket"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mMainHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 175
    new-instance v0, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v0}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 181
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 183
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 198
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 210
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 212
    const-string v0, "simulator"

    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const/16 v3, 0xa

    const-string v4, "NetdConnector"

    const/16 v5, 0xa0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 218
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "NetdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    .line 221
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(Ljava/lang/String;Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "netd"

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "socket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v1, Lcom/android/server/NetworkManagementService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    .local v1, "service":Lcom/android/server/NetworkManagementService;
    iget-object v0, v1, Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    .line 229
    .local v0, "connectedSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, v1, Lcom/android/server/NetworkManagementService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 233
    return-object v1
.end method

.method private static enforceSystemUid()V
    .locals 3

    .prologue
    .line 1911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1912
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1913
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1915
    :cond_0
    return-void
.end method

.method private static getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1202
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1208
    :pswitch_0
    const-string v0, "open"

    :goto_0
    return-object v0

    .line 1204
    :pswitch_1
    const-string v0, "wpa-psk"

    goto :goto_0

    .line 1206
    :pswitch_2
    const-string v0, "wpa2-psk"

    goto :goto_0

    .line 1202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "internalInterface"    # Ljava/lang/String;
    .param p3, "externalInterface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1074
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "nat"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-direct {v1, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-static {p2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    .line 1078
    .local v6, "internalNetworkInterface":Ljava/net/NetworkInterface;
    if-nez v6, :cond_1

    .line 1079
    const-string v7, "0"

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1092
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    return-void

    .line 1081
    :cond_1
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v5

    .line 1083
    .local v5, "interfaceAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1084
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InterfaceAddress;

    .line 1085
    .local v4, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-static {v7, v8}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1087
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 1093
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ia":Ljava/net/InterfaceAddress;
    .end local v5    # "interfaceAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    :catch_0
    move-exception v2

    .line 1094
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method private modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/net/RouteInfo;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 771
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v3, "interface"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-direct {v0, v3, v4}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v2

    .line 775
    .local v2, "la":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 776
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 778
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_1

    .line 779
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 780
    const-string v3, "0.0.0.0"

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 789
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v3, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    return-void

    .line 782
    :cond_0
    const-string v3, "::0"

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 785
    :cond_1
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 790
    :catch_0
    move-exception v1

    .line 791
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 449
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 457
    return-void

    .line 453
    :catch_0
    move-exception v2

    goto :goto_1

    .line 452
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "scope"    # I

    .prologue
    .line 433
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 434
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 442
    return-void

    .line 438
    :catch_0
    move-exception v2

    goto :goto_1

    .line 437
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 293
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 301
    return-void

    .line 297
    :catch_0
    move-exception v2

    goto :goto_1

    .line 296
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyInterfaceClassActivity(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "active"    # Z

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 343
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 351
    return-void

    .line 347
    :catch_0
    move-exception v2

    goto :goto_1

    .line 346
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 277
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 278
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 286
    return-void

    .line 282
    :catch_0
    move-exception v2

    goto :goto_1

    .line 281
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 313
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 321
    return-void

    .line 317
    :catch_0
    move-exception v2

    goto :goto_1

    .line 316
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 262
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 270
    return-void

    .line 266
    :catch_0
    move-exception v2

    goto :goto_1

    .line 265
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 328
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 336
    return-void

    .line 332
    :catch_0
    move-exception v2

    goto :goto_1

    .line 331
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private prepareNativeDaemon()V
    .locals 14

    .prologue
    .line 358
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    .line 361
    new-instance v9, Ljava/io/File;

    const-string v10, "/proc/net/xt_qtaguid/ctrl"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    .line 362
    .local v4, "hasKernelSupport":Z
    if-eqz v4, :cond_1

    .line 363
    const-string v9, "NetworkManagementService"

    const-string v10, "enabling bandwidth control"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :try_start_0
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "bandwidth"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "enable"

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 366
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    const-string v10, "net.qtaguid_enabled"

    iget-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v9, :cond_2

    const-string v9, "1"

    :goto_1
    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-eqz v9, :cond_0

    .line 378
    :try_start_1
    const-string v9, "batterystats"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 385
    :cond_0
    :goto_2
    iget-object v11, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v11

    .line 386
    :try_start_2
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 387
    .local v7, "size":I
    if-lez v7, :cond_3

    .line 388
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active quota rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 390
    .local v1, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 391
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 392
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v9, v12, v13}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    goto :goto_3

    .line 423
    .end local v1    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "size":I
    :catchall_0
    move-exception v9

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v9, "NetworkManagementService"

    const-string v10, "problem enabling bandwidth controls"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 371
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    const-string v9, "NetworkManagementService"

    const-string v10, "not enabling bandwidth control"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    :cond_2
    const-string v9, "0"

    goto/16 :goto_1

    .line 396
    .restart local v7    # "size":I
    :cond_3
    :try_start_3
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 397
    if-lez v7, :cond_4

    .line 398
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active alert rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 400
    .local v0, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 401
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 402
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {p0, v9, v12, v13}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    goto :goto_4

    .line 406
    .end local v0    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 407
    if-lez v7, :cond_5

    .line 408
    const-string v9, "NetworkManagementService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pushing "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " active uid rules"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 410
    .local v8, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    .line 411
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-ge v5, v9, :cond_5

    .line 416
    :try_start_4
    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/server/NetworkManagementService;->setUidNetworkRules(IZ)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 411
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 417
    :catch_1
    move-exception v2

    .line 418
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v9, "NetworkManagementService"

    const-string v10, "problem setting uid rules"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 423
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v5    # "i":I
    .end local v8    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    :cond_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 426
    iget-boolean v9, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    if-nez v9, :cond_6

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p0, v9}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 427
    return-void

    .line 426
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 380
    .end local v7    # "size":I
    :catch_2
    move-exception v9

    goto/16 :goto_2
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "fstream":Ljava/io/FileInputStream;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .local v2, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 802
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 807
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "s":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 808
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 810
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .line 813
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v1, :cond_0

    .line 815
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 820
    :cond_0
    :goto_2
    return-object v4

    .line 813
    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 815
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 818
    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 813
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v1, :cond_3

    .line 815
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 813
    :cond_3
    :goto_5
    throw v6

    .line 816
    :catch_1
    move-exception v6

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_5

    .end local v1    # "fstream":Ljava/io/FileInputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "s":Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 813
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v5    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fstream":Ljava/io/FileInputStream;
    .restart local v1    # "fstream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 810
    :catch_4
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 1375
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1380
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1381
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_0

    .line 1383
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1384
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    :goto_0
    return-void

    .line 1388
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "add"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v4, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    monitor-exit v3

    goto :goto_0

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1389
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "add"

    const-string v1, "default"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "metric"    # I
    .param p3, "route"    # Landroid/net/RouteInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2102
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2106
    const-string v5, "NetworkManagementService"

    const-string v6, "route cmd failed - iface is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :goto_0
    return v4

    .line 2110
    :cond_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "route"

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "add"

    aput-object v8, v7, v4

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2111
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2112
    const-string v6, "def"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2117
    :goto_1
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 2118
    .local v2, "gateway":Ljava/net/InetAddress;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    .line 2119
    const-string v6, "v4"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2124
    :goto_2
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2129
    invoke-virtual {p3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2130
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2133
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2136
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "rsp":Lcom/android/server/NativeDaemonEvent;
    move v4, v5

    .line 2145
    goto :goto_0

    .line 2114
    .end local v2    # "gateway":Ljava/net/InetAddress;
    .end local v3    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :cond_2
    const-string v6, "dst"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_1

    .line 2121
    .restart local v2    # "gateway":Ljava/net/InetAddress;
    :cond_3
    const-string v6, "v6"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_2

    .line 2137
    :catch_0
    move-exception v1

    .line 2138
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v5, "NetworkManagementService"

    const-string v6, "route cmd failed: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "add"

    const-string v1, "secondary"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public addUpstreamV6Interface(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addUpstreamInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add_upstream"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 599
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    return-void

    .line 600
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v1

    .line 601
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot add upstream interface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tty"    # Ljava/lang/String;
    .param p2, "localAddr"    # Ljava/lang/String;
    .param p3, "remoteAddr"    # Ljava/lang/String;
    .param p4, "dns1Addr"    # Ljava/lang/String;
    .param p5, "dns2Addr"    # Ljava/lang/String;

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppd"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "attach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    return-void

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public blockDataTrafficInternal(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 2150
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 2152
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "enable"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 2153
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mBlockDataTrafficInternal:Z

    .line 2157
    return-void

    .line 2152
    :cond_1
    const-string v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2154
    :catch_0
    move-exception v0

    .line 2155
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearDnsInterfaceForPid(I)V
    .locals 6
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearifaceforpid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    return-void

    .line 1933
    :catch_0
    move-exception v0

    .line 1934
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error communicating with native deamon to clear interface for pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearDnsInterfaceForUidRange(Ljava/lang/String;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid_start"    # I
    .param p3, "uid_end"    # I

    .prologue
    .line 1803
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearifaceforuidrange"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    return-void

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearDnsInterfaceMaps()V
    .locals 6

    .prologue
    .line 1813
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearifacemapping"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    return-void

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearHostExemption(Landroid/net/LinkAddress;)V
    .locals 6
    .param p1, "host"    # Landroid/net/LinkAddress;

    .prologue
    .line 1783
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "exempt"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    return-void

    .line 1786
    :catch_0
    move-exception v0

    .line 1787
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "clearaddrs"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearMarkedForwarding(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1713
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "rule"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    return-void

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public clearMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1761
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :try_start_0
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1764
    .local v0, "dest":Landroid/net/LinkAddress;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fwmark"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "remove"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    return-void

    .line 1766
    .end local v0    # "dest":Landroid/net/LinkAddress;
    :catch_0
    move-exception v1

    .line 1767
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public clearUidRangeRoute(Ljava/lang/String;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid_start"    # I
    .param p3, "uid_end"    # I

    .prologue
    .line 1692
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "uid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    return-void

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public delSrcRoute([BI)Z
    .locals 9
    .param p1, "ip"    # [B
    .param p2, "routeId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2067
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2078
    .local v2, "ipAddr":Ljava/net/InetAddress;
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "route"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "del"

    aput-object v8, v7, v5

    const-string v8, "src"

    aput-object v8, v7, v4

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2080
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    instance-of v6, v2, Ljava/net/Inet4Address;

    if-eqz v6, :cond_0

    .line 2081
    const-string v6, "v4"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2086
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2089
    :try_start_1
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2097
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v2    # "ipAddr":Ljava/net/InetAddress;
    :goto_1
    return v4

    .line 2073
    :catch_0
    move-exception v1

    .line 2074
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v4, "NetworkManagementService"

    const-string v6, "route cmd failed due to invalid src ip"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 2075
    goto :goto_1

    .line 2083
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v2    # "ipAddr":Ljava/net/InetAddress;
    :cond_0
    const-string v6, "v6"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 2090
    :catch_1
    move-exception v1

    .line 2091
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v4, "NetworkManagementService"

    const-string v6, "route cmd failed: "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 2092
    goto :goto_1
.end method

.method public detachPppd(Ljava/lang/String;)V
    .locals 6
    .param p1, "tty"    # Ljava/lang/String;

    .prologue
    .line 1146
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "detach"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    return-void

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "disable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :try_start_0
    const-string v1, "disable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    return-void

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1986
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    const-string v2, "NetworkManagementService NativeDaemonConnector Log:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1992
    const-string v2, "Bandwidth control enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1994
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1995
    :try_start_0
    const-string v2, "Active quota ifaces: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1996
    const-string v2, "Active alert ifaces: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1997
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    monitor-enter v3

    .line 2000
    :try_start_1
    const-string v2, "UID reject on quota ifaces: ["

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2001
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 2002
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2003
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2004
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2002
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1997
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2006
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    :try_start_3
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2007
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2009
    const-string v2, "Firewall enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2010
    return-void

    .line 2007
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ipv6"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, "enable"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :try_start_0
    const-string v1, "enable"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    return-void

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableTrafficMonitor(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setTrafficMonitor"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public flushDefaultDnsCache()V
    .locals 6

    .prologue
    .line 1824
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "flushdefaultif"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    return-void

    .line 1827
    :catch_0
    move-exception v0

    .line 1828
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public flushInterfaceDnsCache(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1834
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "flushif"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    return-void

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dns"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 14
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 623
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v11, "NetworkManagementService"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :try_start_0
    iget-object v9, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v10, "interface"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "getcfg"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 632
    .local v3, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v9, 0xd5

    invoke-virtual {v3, v9}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 635
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 639
    .local v8, "st":Ljava/util/StringTokenizer;
    :try_start_1
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 640
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 644
    .local v7, "prefixLength":I
    :try_start_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 650
    :goto_0
    :try_start_3
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    .line 655
    :goto_1
    :try_start_4
    new-instance v9, Landroid/net/LinkAddress;

    invoke-direct {v9, v0, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 656
    :goto_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 657
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 659
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .end local v7    # "prefixLength":I
    :catch_0
    move-exception v6

    .line 660
    .local v6, "nsee":Ljava/util/NoSuchElementException;
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid response from daemon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 628
    .end local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "nsee":Ljava/util/NoSuchElementException;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v2

    .line 629
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v9

    throw v9

    .line 645
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    .restart local v3    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "prefixLength":I
    .restart local v8    # "st":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v4

    .line 646
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v9, "NetworkManagementService"

    const-string v10, "Failed to parse ipaddr"

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 651
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 652
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "NetworkManagementService"

    const-string v10, "Failed to parse prefixLength"

    invoke-static {v9, v10, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 662
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    return-object v1
.end method

.method public getIpForwardingEnabled()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipfwd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 932
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd3

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 933
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 927
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getMarkForProtect()I
    .locals 7

    .prologue
    .line 1736
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fwmark"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "get"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "protect"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1743
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1744
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1740
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1741
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getMarkForUid(I)I
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1723
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fwmark"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "get"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mark"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1730
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xe1

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1731
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1727
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public getNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 4

    .prologue
    .line 1440
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 4

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 4

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 17

    .prologue
    .line 1611
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v14, "NetworkManagementService"

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    new-instance v10, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-direct {v10, v12, v13, v14}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1615
    .local v10, "stats":Landroid/net/NetworkStats;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v13, "bandwidth"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "gettetherstats"

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    .line 1617
    .local v5, "events":[Lcom/android/server/NativeDaemonEvent;
    move-object v1, v5

    .local v1, "arr$":[Lcom/android/server/NativeDaemonEvent;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_1

    aget-object v4, v1, v6

    .line 1618
    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v12

    const/16 v13, 0x72

    if-eq v12, v13, :cond_0

    .line 1617
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1623
    .local v11, "tok":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1624
    .local v7, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1626
    .local v8, "ifaceOut":Ljava/lang/String;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1627
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v8, v3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1628
    const/4 v12, -0x5

    iput v12, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1629
    const/4 v12, 0x0

    iput v12, v3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1630
    const/4 v12, 0x0

    iput v12, v3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1631
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1632
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1633
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1634
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1635
    invoke-virtual {v10, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1636
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v7    # "ifaceIn":Ljava/lang/String;
    .end local v8    # "ifaceOut":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1637
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "problem parsing tethering stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1642
    .end local v1    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "tok":Ljava/util/StringTokenizer;
    :catch_1
    move-exception v2

    .line 1643
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v12

    throw v12

    .line 1638
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v1    # "arr$":[Lcom/android/server/NativeDaemonEvent;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v5    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v6    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "tok":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v2

    .line 1639
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "problem parsing tethering stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1645
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v11    # "tok":Ljava/util/StringTokenizer;
    :cond_1
    return-object v10
.end method

.method public getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mStatsFactory:Lcom/android/internal/net/NetworkStatsFactory;

    invoke-virtual {v1, p1}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;
    .locals 22
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v21, "NetworkManagementService"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v17, "routes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/RouteInfo;>;"
    const-string v19, "/proc/net/route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 831
    .local v18, "s":Ljava/lang/String;
    const-string v19, "\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 834
    const/16 v19, 0x0

    aget-object v11, v5, v19

    .line 836
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 837
    const/16 v19, 0x1

    aget-object v2, v5, v19

    .line 838
    .local v2, "dest":Ljava/lang/String;
    const/16 v19, 0x2

    aget-object v7, v5, v19

    .line 839
    .local v7, "gate":Ljava/lang/String;
    const/16 v19, 0x3

    aget-object v6, v5, v19

    .line 840
    .local v6, "flags":Ljava/lang/String;
    const/16 v19, 0x7

    aget-object v13, v5, v19

    .line 843
    .local v13, "mask":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_0
    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    .line 845
    .local v3, "destAddr":Ljava/net/InetAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v15

    .line 848
    .local v15, "prefixLength":I
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 851
    .local v12, "linkAddress":Landroid/net/LinkAddress;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    .line 854
    .local v9, "gatewayAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 855
    .local v16, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 856
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v9    # "gatewayAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_0
    move-exception v4

    .line 857
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v6    # "flags":Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v13    # "mask":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_1
    const-string v19, "/proc/net/ipv6_route"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/NetworkManagementService;->readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 867
    .restart local v18    # "s":Ljava/lang/String;
    const-string v19, "\\s+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 868
    .restart local v5    # "fields":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x9

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    .line 869
    const/16 v19, 0x9

    aget-object v19, v5, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 870
    .restart local v11    # "iface":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 871
    const/16 v19, 0x0

    aget-object v2, v5, v19

    .line 872
    .restart local v2    # "dest":Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v14, v5, v19

    .line 873
    .local v14, "prefix":Ljava/lang/String;
    const/16 v19, 0x4

    aget-object v7, v5, v19

    .line 877
    .restart local v7    # "gate":Ljava/lang/String;
    const/16 v19, 0x10

    :try_start_1
    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 881
    .restart local v15    # "prefixLength":I
    invoke-static {v2}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 882
    .restart local v3    # "destAddr":Ljava/net/InetAddress;
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v3, v15}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 884
    .restart local v12    # "linkAddress":Landroid/net/LinkAddress;
    invoke-static {v7}, Landroid/net/NetworkUtils;->hexToInet6Address(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 886
    .local v8, "gateAddr":Ljava/net/InetAddress;
    new-instance v16, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v8}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 887
    .restart local v16    # "route":Landroid/net/RouteInfo;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 888
    .end local v3    # "destAddr":Ljava/net/InetAddress;
    .end local v8    # "gateAddr":Ljava/net/InetAddress;
    .end local v12    # "linkAddress":Landroid/net/LinkAddress;
    .end local v15    # "prefixLength":I
    .end local v16    # "route":Landroid/net/RouteInfo;
    :catch_1
    move-exception v4

    .line 889
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "NetworkManagementService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error parsing route "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 895
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "fields":[Ljava/lang/String;
    .end local v7    # "gate":Ljava/lang/String;
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Landroid/net/RouteInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/net/RouteInfo;

    return-object v19
.end method

.method public getSapAutoChannelSelection()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1285
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CHANGE_NETWORK_STATE"

    const-string v10, "NetworkManagementService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    const-string v10, "NetworkManagementService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/4 v1, 0x0

    .line 1292
    .local v1, "autochannel":I
    :try_start_0
    const-string v8, "NetworkManagementService"

    const-string v9, "getSapAutoChannelSelection"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "softap"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "qccmd"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "get"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "autochannel"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1296
    .local v0, "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v6, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1298
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "temp":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 1300
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "="

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    .local v7, "tok1":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1302
    .local v4, "temp1":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1303
    .local v5, "temp2":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 1304
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1306
    .end local v4    # "temp1":Ljava/lang/String;
    .end local v5    # "temp2":Ljava/lang/String;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_1
    const-string v8, "NetworkManagementService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSapAutoChannelSelection--OperChanResp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v8, "NetworkManagementService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "softap qccmd get autochannel ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    return v1

    .end local v3    # "temp":Ljava/lang/String;
    :cond_2
    move-object v3, v5

    .line 1298
    goto :goto_0

    .restart local v3    # "temp":Ljava/lang/String;
    .restart local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_3
    move-object v4, v5

    .line 1301
    goto :goto_1

    .line 1309
    .end local v0    # "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "temp":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v2

    .line 1310
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Error communicating to native daemon to getSapOperatingChannel"

    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public getSapOperatingChannel()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1253
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CHANGE_NETWORK_STATE"

    const-string v10, "NetworkManagementService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    const-string v10, "NetworkManagementService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const/4 v1, 0x0

    .line 1260
    .local v1, "channel":I
    :try_start_0
    const-string v8, "NetworkManagementService"

    const-string v9, "getSapOperatingChannel"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v9, "softap"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "qccmd"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "get"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "channel"

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 1262
    .local v0, "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    const-string v8, "NetworkManagementService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSapOperatingChannel--OperChanResp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1266
    .local v6, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1267
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1268
    .local v3, "temp":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 1269
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "="

    invoke-direct {v7, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    .local v7, "tok1":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1271
    .local v4, "temp1":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1272
    .local v5, "temp2":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 1273
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1275
    .end local v4    # "temp1":Ljava/lang/String;
    .end local v5    # "temp2":Ljava/lang/String;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_1
    const-string v8, "NetworkManagementService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "softap qccmd get channel ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1276
    return v1

    .end local v3    # "temp":Ljava/lang/String;
    :cond_2
    move-object v3, v5

    .line 1267
    goto :goto_0

    .restart local v3    # "temp":Ljava/lang/String;
    .restart local v7    # "tok1":Ljava/util/StringTokenizer;
    :cond_3
    move-object v4, v5

    .line 1270
    goto :goto_1

    .line 1277
    .end local v0    # "OperChanResp":Lcom/android/server/NativeDaemonEvent;
    .end local v3    # "temp":Ljava/lang/String;
    .end local v6    # "tok":Ljava/util/StringTokenizer;
    .end local v7    # "tok1":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v2

    .line 1278
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Error communicating to native daemon to getSapOperatingChannel"

    invoke-direct {v8, v9, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public isBandwidthControlEnabled()Z
    .locals 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    return v0
.end method

.method public isClatdStarted()Z
    .locals 7

    .prologue
    .line 1963
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "clatd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1972
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xdf

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1973
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1968
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isFirewallEnabled()Z
    .locals 1

    .prologue
    .line 1858
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1859
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isTetheringStarted()Z
    .locals 7

    .prologue
    .line 999
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "tether"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "status"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1009
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v2, 0xd2

    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 1010
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 1004
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public listInterfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "list"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public listTtys()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "list_ttys"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x71

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public monitor()V
    .locals 1

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    .line 1982
    :cond_0
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 249
    return-void
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1398
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1403
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1404
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    if-lez v2, :cond_1

    .line 1405
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    :goto_0
    return-void

    .line 1409
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "idletimer"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "remove"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    iget v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->label:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1414
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    monitor-exit v3

    goto :goto_0

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1411
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1527
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1533
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1534
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1536
    monitor-exit v2

    goto :goto_0

    .line 1546
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1541
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1542
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_0

    .line 1495
    :goto_0
    return-void

    .line 1479
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1480
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1482
    monitor-exit v2

    goto :goto_0

    .line 1494
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1485
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "removeiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1494
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "remove"

    const-string v1, "default"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 3
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "remove"

    const-string v1, "secondary"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/NetworkManagementService;->modifyRoute(Ljava/lang/String;Ljava/lang/String;Landroid/net/RouteInfo;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public removeUpstreamV6Interface(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeUpstreamInterface("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v2, "tether"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "remove_upstream"

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 615
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    return-void

    .line 616
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot remove upstream interface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "ip"    # [B
    .param p3, "gateway"    # [B
    .param p4, "routeId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2014
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2019
    const-string v6, "NetworkManagementService"

    const-string v7, "route cmd failed - iface is invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :goto_0
    return v5

    .line 2024
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2030
    .local v3, "ipAddr":Ljava/net/InetAddress;
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "route"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "replace"

    aput-object v9, v8, v5

    const-string v9, "src"

    aput-object v9, v8, v6

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2032
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    .line 2033
    const-string v7, "v4"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2037
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2038
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2039
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 2042
    :try_start_1
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    .line 2044
    .local v2, "gatewayAddr":Ljava/net/InetAddress;
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_1

    instance-of v7, v2, Ljava/net/Inet4Address;

    if-nez v7, :cond_2

    :cond_1
    instance-of v7, v3, Ljava/net/Inet6Address;

    if-eqz v7, :cond_3

    instance-of v7, v2, Ljava/net/Inet6Address;

    if-eqz v7, :cond_3

    .line 2047
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2054
    .end local v2    # "gatewayAddr":Ljava/net/InetAddress;
    :cond_3
    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .local v4, "rsp":Lcom/android/server/NativeDaemonEvent;
    move v5, v6

    .line 2062
    goto :goto_0

    .line 2025
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .end local v3    # "ipAddr":Ljava/net/InetAddress;
    .end local v4    # "rsp":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v6, "NetworkManagementService"

    const-string v7, "route cmd failed because of unknown src ip"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2035
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    .restart local v3    # "ipAddr":Ljava/net/InetAddress;
    :cond_4
    const-string v7, "v6"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_1

    .line 2049
    :catch_1
    move-exception v1

    .line 2050
    .restart local v1    # "e":Ljava/net/UnknownHostException;
    const-string v7, "NetworkManagementService"

    const-string v8, "route cmd did not obtain valid gw; adding route without gw"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2055
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v1

    .line 2056
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v6, "NetworkManagementService"

    const-string v7, "route cmd failed: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public runIpLogCmd(Ljava/lang/String;)I
    .locals 11
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 978
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v8, "iplog"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {v2, v8, v9}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 980
    .local v7, "rawArgs":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 981
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 980
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 984
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v8, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 988
    .local v4, "event":Lcom/android/server/NativeDaemonEvent;
    const/16 v8, 0x12d

    invoke-virtual {v4, v8}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    .line 990
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    return v8

    .line 985
    .end local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v3

    .line 986
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8

    .line 991
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v4    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v3

    .line 992
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 9
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    .line 1329
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    if-nez p1, :cond_0

    .line 1332
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1371
    :goto_0
    return-void

    .line 1335
    :cond_0
    const-string v0, "US"

    .line 1336
    .local v0, "country_code":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1338
    .local v2, "mPhone":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_6

    .line 1339
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1340
    if-nez v0, :cond_4

    .line 1341
    const-string v3, "NetworkManagementService"

    const-string v4, "country_code received from TelephonyManager is null, using default XX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const-string v0, "US"

    .line 1357
    :cond_1
    :goto_1
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-gt v3, v7, :cond_2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-gez v3, :cond_3

    .line 1358
    :cond_2
    const/16 v3, 0xa

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 1362
    :cond_3
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    const/4 v6, 0x6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->hotspotFreqBand:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1368
    .end local v0    # "country_code":Ljava/lang/String;
    .end local v2    # "mPhone":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 1369
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1344
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "country_code":Ljava/lang/String;
    .restart local v2    # "mPhone":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_5

    const-string v3, "^\\s*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1347
    :cond_5
    const-string v3, "NetworkManagementService"

    const-string v4, "country_code received from TelephonyManager is empty, using default XX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const-string v0, "US"

    goto :goto_1

    .line 1352
    :cond_6
    const-string v0, "US"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setChannelRange(III)V
    .locals 6
    .param p1, "startchannel"    # I
    .param p2, "endchannel"    # I
    .param p3, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    :try_start_0
    const-string v1, "NetworkManagementService"

    const-string v2, "Set SAP Channel Range"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "qccmd"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "set"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "setchannelrange="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, " "

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    return-void

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error communicating to native daemon to set channel range"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDefaultInterfaceForDns(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1650
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setdefaultif"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    return-void

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsForwarders([Ljava/lang/String;)V
    .locals 10
    .param p1, "dns"    # [Ljava/lang/String;

    .prologue
    .line 1047
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "tether"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "dns"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "set"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1051
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1050
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1055
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    return-void

    .line 1056
    :catch_0
    move-exception v2

    .line 1057
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public setDnsInterfaceForPid(Ljava/lang/String;I)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1919
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setifaceforpid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1926
    return-void

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error communicating with native deamon to set interface for pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid_start"    # I
    .param p3, "uid_end"    # I

    .prologue
    .line 1793
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "resolver"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setifaceforuidrange"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # Ljava/lang/String;

    .prologue
    .line 1660
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v9, "NetworkManagementService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    new-instance v2, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "resolver"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "setifdns"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "domains":Ljava/lang/String;
    :cond_0
    aput-object p3, v8, v9

    invoke-direct {v2, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    .local v2, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v1, v4

    .line 1666
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1667
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1668
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 1665
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1673
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v7, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    return-void

    .line 1674
    :catch_0
    move-exception v3

    .line 1675
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "allow"    # Z

    .prologue
    .line 1888
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1889
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1890
    if-eqz p3, :cond_0

    const-string v1, "allow"

    .line 1892
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_egress_dest_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1896
    return-void

    .line 1890
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string v1, "deny"

    goto :goto_0

    .line 1893
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1894
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 1876
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1877
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1878
    if-eqz p2, :cond_0

    const-string v1, "allow"

    .line 1880
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_egress_source_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1884
    return-void

    .line 1878
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string v1, "deny"

    goto :goto_0

    .line 1881
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1844
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1847
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBlockDataTrafficInternal:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "enable"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1850
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    .line 1854
    return-void

    .line 1847
    :cond_1
    const-string v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1851
    :catch_0
    move-exception v0

    .line 1852
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .prologue
    .line 1864
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1865
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1866
    if-eqz p2, :cond_0

    const-string v1, "allow"

    .line 1868
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_interface_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    return-void

    .line 1866
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string v1, "deny"

    goto :goto_0

    .line 1869
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setFirewallUidRule(IZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .prologue
    .line 1900
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1901
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1902
    if-eqz p2, :cond_0

    const-string v1, "allow"

    .line 1904
    .local v1, "rule":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "firewall"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "set_uid_rule"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    return-void

    .line 1902
    .end local v1    # "rule":Ljava/lang/String;
    :cond_0
    const-string v1, "deny"

    goto :goto_0

    .line 1905
    .restart local v1    # "rule":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1906
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setGlobalAlert(J)V
    .locals 6
    .param p1, "alertBytes"    # J

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_0

    .line 1562
    :goto_0
    return-void

    .line 1558
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "bandwidth"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setglobalalert"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setHostExemption(Landroid/net/LinkAddress;)V
    .locals 6
    .param p1, "host"    # Landroid/net/LinkAddress;

    .prologue
    .line 1773
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "exempt"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    return-void

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .prologue
    .line 1499
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_0

    .line 1523
    :goto_0
    return-void

    .line 1506
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1507
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setting alert requires existing quota on iface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1510
    :cond_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1511
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1512
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1522
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1517
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setinterfacealert"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1518
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1522
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 1519
    :catch_0
    move-exception v0

    .line 1520
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .prologue
    .line 667
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v7, "NetworkManagementService"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v4

    .line 669
    .local v4, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_1

    .line 670
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Null LinkAddress given"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 673
    :cond_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v5, "interface"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "setcfg"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 677
    .local v2, "flag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    goto :goto_0

    .line 681
    .end local v2    # "flag":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    return-void

    .line 682
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v5

    throw v5
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 691
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 692
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 693
    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v5, "ipv6privacyextensions"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 v5, 0x2

    if-eqz p2, :cond_0

    const-string v1, "enable"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 712
    return-void

    .line 707
    :cond_0
    const-string v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 1450
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v1, :cond_0

    .line 1469
    :goto_0
    return-void

    .line 1456
    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1457
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1458
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already has quota"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1468
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1463
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "bandwidth"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setiquota"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1464
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1468
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 1465
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 699
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 700
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 701
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "ipfwd"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string v1, "enable"

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 944
    return-void

    .line 940
    :cond_0
    const-string v1, "disable"
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMarkedForwarding(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1703
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "rule"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    return-void

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "route"    # Landroid/net/RouteInfo;

    .prologue
    .line 1749
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :try_start_0
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1752
    .local v0, "dest":Landroid/net/LinkAddress;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "fwmark"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "route"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "add"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    return-void

    .line 1754
    .end local v0    # "dest":Landroid/net/LinkAddress;
    :catch_0
    move-exception v1

    .line 1755
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setMtu(Ljava/lang/String;I)V
    .locals 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .prologue
    .line 900
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v2, "NetworkManagementService"

    const-string v3, "Enter setMtu in NetworkManagementService"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "interface"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setmtu"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    .line 906
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    const-string v2, "NetworkManagementService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "setmtu "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    return-void

    .line 907
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setUidNetworkRules(IZ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "rejectOnQuotaInterfaces"    # Z

    .prologue
    .line 1566
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v4, "NetworkManagementService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mBandwidthControlEnabled:Z

    if-nez v2, :cond_0

    .line 1591
    :goto_0
    return-void

    .line 1572
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1573
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 1574
    .local v1, "oldRejectOnQuota":Z
    if-ne v1, p2, :cond_1

    .line 1576
    monitor-exit v3

    goto :goto_0

    .line 1590
    .end local v1    # "oldRejectOnQuota":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1580
    .restart local v1    # "oldRejectOnQuota":Z
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "bandwidth"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    const-string v2, "addnaughtyapps"

    :goto_1
    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1582
    if-eqz p2, :cond_3

    .line 1583
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1580
    :cond_2
    :try_start_3
    const-string v2, "removenaughtyapps"

    goto :goto_1

    .line 1585
    :cond_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnQuota:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setUidRangeRoute(Ljava/lang/String;II)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid_start"    # I
    .param p3, "uid_end"    # I

    .prologue
    .line 1681
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "interface"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwmark"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "uid"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    return-void

    .line 1685
    :catch_0
    move-exception v0

    .line 1686
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v0, "NetworkManagementService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-void
.end method

.method public startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 9
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wlanIface"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    .line 1157
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v5, "NetworkManagementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :try_start_0
    const-string v3, "AP"

    invoke-virtual {p0, p2, v3}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    if-nez p1, :cond_0

    .line 1161
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1195
    :goto_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "startap"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1199
    return-void

    .line 1164
    :cond_0
    const-string v0, "US"

    .line 1165
    .local v0, "country_code":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1167
    .local v2, "mPhone":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 1168
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1169
    if-nez v0, :cond_4

    .line 1170
    const-string v3, "NetworkManagementService"

    const-string v4, "country_code received from TelephonyManager is null, using default XX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string v0, "US"

    .line 1184
    :cond_1
    :goto_1
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-gt v3, v7, :cond_2

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    if-gez v3, :cond_3

    .line 1185
    :cond_2
    const/16 v3, 0xa

    iput v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    .line 1189
    :cond_3
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v4, "softap"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "set"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v8, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    const/4 v6, 0x6

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->hotspotFreqBand:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    .end local v0    # "country_code":Ljava/lang/String;
    .end local v2    # "mPhone":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 1197
    .local v1, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 1173
    .end local v1    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v0    # "country_code":Ljava/lang/String;
    .restart local v2    # "mPhone":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_5

    const-string v3, "^\\s*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1176
    :cond_5
    const-string v3, "NetworkManagementService"

    const-string v4, "country_code received from TelephonyManager is empty, using default XX"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const-string v0, "US"
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public startClatd(Ljava/lang/String;)V
    .locals 6
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "start"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1948
    return-void

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public startTethering([Ljava/lang/String;)V
    .locals 10
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .prologue
    .line 948
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v8, "NetworkManagementService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v1, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v6, "tether"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "start"

    aput-object v9, v7, v8

    invoke-direct {v1, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 953
    .local v1, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 954
    .local v2, "d":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 953
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 958
    .end local v2    # "d":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v6, v1}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    return-void

    .line 959
    :catch_0
    move-exception v3

    .line 960
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public stopAccessPoint(Ljava/lang/String;)V
    .locals 6
    .param p1, "wlanIface"    # Ljava/lang/String;

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stopap"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 1228
    const-string v1, "STA"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    return-void

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopClatd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1952
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "clatd"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    return-void

    .line 1956
    :catch_0
    move-exception v0

    .line 1957
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public stopTethering()V
    .locals 6

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "stop"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 243
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "add"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    return-void

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkManagementService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 255
    return-void
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "tether"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "interface"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "remove"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "wlanIface"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 1215
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v3, "NetworkManagementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "softap"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "fwreload"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method
