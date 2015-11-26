.class public Lcom/motorola/android/wifi/WifiBestChannel;
.super Ljava/lang/Object;
.source "WifiBestChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/wifi/WifiBestChannel$1;,
        Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiBestChannel"

.field private static final channelInterferneceLevelONE:I = 0x1

.field private static final channelInterferneceLevelTHREE:I = 0x3

.field private static final channelInterferneceLevelTWO:I = 0x2

.field private static final channelInterferneceLevelZERO:I = 0x0

.field private static final channelsFrequency:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static fiveBestChannel:I = 0x0

.field public static fiveBestLowerChannel:I = 0x0

.field public static fiveBestUpperChannel:I = 0x0

.field private static fiveGhzBandOverAllBestChannel:I = 0x0

.field private static fiveGhzLevelLowerBand:I = 0x0

.field private static fiveGhzLevelLowerBandBestChannel:I = 0x0

.field private static fiveGhzLevelUpperBand:I = 0x0

.field private static fiveGhzLevelUpperBandBestChannel:I = 0x0

.field public static levelOFPriorityChecked:I = 0x0

.field private static mWifiNative:Landroid/net/wifi/WifiNative; = null

.field private static final noAccessPointPresent:I = 0x0

.field private static numOfAPonChannel:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static overallBestTwoFourChannel:I = 0x0

.field private static final rssiBaseLineFactor:I = 0x64

.field private static rssiLoadOfAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static supportedWiFiBand:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    .line 55
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    .line 56
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    .line 59
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 60
    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->supportedWiFiBand:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x96c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x971

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x976

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x97b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0x980

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x985

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x98a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x98f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x994

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x999

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x99e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x9a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x9a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x9b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x143c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x1450

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x1464

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x1478

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x1671

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x1685

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x1699

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x16ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x16c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->channelsFrequency:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    .line 82
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/net/wifi/WifiNative;

    const-string v1, "p2p0"

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 85
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getBand()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->supportedWiFiBand:I

    .line 87
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 31
    sput-object p0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 31
    sput-object p0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 31
    sput p0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    return p0
.end method

.method static synthetic access$500(Lcom/motorola/android/wifi/WifiBestChannel;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiBestChannel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 31
    invoke-static {p0}, Lcom/motorola/android/wifi/WifiBestChannel;->getChannelFromFrequency(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/wifi/WifiBestChannel;->fillNumberOfApOnSpecificChannel(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static computeBestChannelFor24Band()I
    .locals 40

    .prologue
    .line 437
    const/4 v10, 0x0

    .line 438
    .local v10, "freeBestZeroSpacingChannel":I
    const/4 v7, 0x0

    .line 439
    .local v7, "freeBestOneSpacingChannel":I
    const/4 v9, 0x0

    .line 440
    .local v9, "freeBestTwoSpacingChannel":I
    const/4 v8, 0x0

    .line 441
    .local v8, "freeBestThreeSpacingChannel":I
    const/4 v6, 0x0

    .line 444
    .local v6, "freeBestFourSpacingChannel":I
    const/4 v15, -0x1

    .line 445
    .local v15, "priorityLevelOneSpacing":I
    const/16 v17, -0x1

    .line 446
    .local v17, "priorityLevelTwoSpacing":I
    const/16 v16, -0x1

    .line 447
    .local v16, "priorityLevelThreeSpacing":I
    const/4 v14, -0x1

    .line 448
    .local v14, "priorityLevelFourSpacing":I
    const/16 v18, -0x1

    .line 451
    .local v18, "priorityLevelZeroSpacing":I
    const/16 v23, 0x0

    .line 452
    .local v23, "tempOneSpaceArrayIndex":I
    const/16 v28, 0x0

    .line 453
    .local v28, "tempTwoSpaceArrayIndex":I
    const/16 v26, 0x0

    .line 454
    .local v26, "tempThreeSpaceArrayIndex":I
    const/16 v20, 0x0

    .line 455
    .local v20, "tempFourSpaceArrayIndex":I
    const/16 v32, 0x0

    .line 458
    .local v32, "tempZeroSpaceArrayIndex":I
    const/16 v21, 0x0

    .line 459
    .local v21, "tempLeastLoadAPdetails":I
    const/4 v11, 0x0

    .line 462
    .local v11, "indexLeastLoadApChannel":I
    new-instance v33, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 465
    .local v33, "tempZeroSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v31, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 468
    .local v31, "tempZeroSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    .local v24, "tempOneSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 474
    .local v22, "tempOneSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    .local v27, "tempTwoSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 480
    .local v25, "tempThreeSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 483
    .local v19, "tempFourSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v34, Ljava/util/ArrayList;

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xd

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 486
    .local v34, "twoFourChannelLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v35, Ljava/util/ArrayList;

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xd

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 490
    .local v35, "twoFourFreeChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .local v4, "counter":I
    :goto_0
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_2

    .line 491
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_0

    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_0
    const/16 v36, 0x2

    move/from16 v0, v36

    if-lt v4, v0, :cond_1

    const/16 v36, 0xa

    move/from16 v0, v36

    if-gt v4, v0, :cond_1

    .line 498
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_1

    .line 499
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v37, v4, -0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_1

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v37, v4, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_1

    .line 500
    const/4 v15, 0x1

    .line 501
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 502
    add-int/lit8 v23, v23, 0x1

    .line 490
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 517
    :cond_2
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 518
    const/4 v4, 0x1

    :goto_1
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_5

    .line 519
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_5

    .line 520
    add-int/lit8 v32, v32, 0x1

    .line 521
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v37, v4, -0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v38, v4, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-gt v0, v1, :cond_4

    .line 524
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 525
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 526
    move v10, v4

    .line 518
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 529
    :cond_4
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 530
    move v10, v4

    goto :goto_2

    .line 538
    :cond_5
    const/16 v36, 0xb

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 540
    const/16 v18, 0x1

    .line 541
    const/4 v4, 0x1

    :goto_3
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_7

    .line 542
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    .line 543
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 544
    add-int/lit8 v11, v11, 0x1

    .line 541
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 547
    :cond_7
    const/16 v36, 0x5

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 577
    :cond_8
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v14, v0, :cond_19

    .line 578
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 579
    const/16 v36, 0x4

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 580
    const/16 v36, 0x1

    move/from16 v0, v20

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 582
    const/4 v4, 0x0

    .line 583
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_f

    .line 585
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 586
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 589
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_e

    .line 591
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 599
    :cond_9
    :goto_4
    sput v6, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 853
    :goto_5
    const/16 v36, 0x0

    return v36

    .line 550
    :cond_a
    const/4 v4, 0x2

    :goto_6
    const/16 v36, 0xa

    move/from16 v0, v36

    if-gt v4, v0, :cond_8

    .line 551
    add-int/lit8 v36, v4, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    add-int/lit8 v36, v4, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v37, v36, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    add-int/lit8 v36, v4, 0x2

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v37, v36, -0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 555
    move v6, v4

    .line 556
    const/4 v14, 0x1

    .line 557
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 558
    add-int/lit8 v20, v20, 0x1

    .line 550
    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 560
    :cond_c
    add-int/lit8 v36, v4, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    add-int/lit8 v36, v4, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v37, v36, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 562
    move v8, v4

    .line 563
    const/16 v16, 0x1

    .line 564
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 565
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 567
    :cond_d
    add-int/lit8 v36, v4, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 568
    move v9, v4

    .line 569
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/16 v17, 0x1

    .line 571
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_7

    .line 593
    :cond_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto/16 :goto_4

    .line 597
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto/16 :goto_4

    .line 601
    :cond_10
    const/4 v5, 0x0

    .line 603
    .local v5, "found":I
    const/4 v4, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v4, v0, :cond_12

    .line 604
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    const/16 v37, 0xb

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    .line 605
    const/16 v6, 0xb

    .line 606
    add-int/lit8 v5, v5, 0x1

    .line 611
    :cond_11
    :goto_9
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v5, v0, :cond_16

    .line 614
    :cond_12
    const/16 v36, 0x6

    move/from16 v0, v20

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    if-nez v5, :cond_13

    .line 616
    const/4 v5, 0x1

    .line 617
    const/4 v6, 0x6

    .line 619
    :cond_13
    if-nez v5, :cond_14

    .line 620
    const/4 v4, 0x0

    .line 622
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_18

    .line 627
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 628
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_14

    .line 633
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_17

    .line 637
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 646
    :cond_14
    :goto_a
    sput v6, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 607
    :cond_15
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    .line 608
    const/4 v6, 0x1

    .line 609
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 603
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 639
    :cond_17
    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_a

    .line 643
    :cond_18
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto :goto_a

    .line 650
    .end local v5    # "found":I
    :cond_19
    const/16 v36, 0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 656
    const/16 v36, 0x3

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 657
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 658
    const/16 v36, 0x1

    move/from16 v0, v26

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 659
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 660
    sput v8, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 662
    :cond_1a
    const/4 v4, 0x0

    .line 664
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_1d

    .line 669
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 670
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    .line 676
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_1c

    .line 681
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 689
    :cond_1b
    :goto_b
    sput v8, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 683
    :cond_1c
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_b

    .line 687
    :cond_1d
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_b

    .line 693
    :cond_1e
    const/16 v36, 0x1

    move/from16 v0, v17

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    .line 698
    const/16 v36, 0x2

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 699
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 702
    new-instance v29, Ljava/util/ArrayList;

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xd

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    .local v29, "tempTwoSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v36, 0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    .line 707
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_21

    .line 709
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    .line 711
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1f

    .line 715
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_20

    .line 717
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    .line 777
    :cond_1f
    :goto_c
    sput v9, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 719
    :cond_20
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_c

    .line 723
    :cond_21
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_c

    .line 725
    :cond_22
    const/16 v36, 0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-le v0, v1, :cond_1f

    .line 726
    const/4 v12, 0x0

    .line 727
    .local v12, "leastValueSearch":I
    const/4 v13, 0x0

    .line 729
    .local v13, "leastValueSearchIndex":I
    const/4 v4, 0x0

    :goto_d
    add-int/lit8 v36, v28, -0x1

    move/from16 v0, v36

    if-gt v4, v0, :cond_23

    .line 730
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 735
    :cond_23
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 736
    const/4 v4, 0x0

    :goto_e
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_24

    .line 737
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_26

    .line 748
    :cond_24
    const/4 v4, 0x0

    :goto_f
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_25

    .line 749
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_29

    .line 756
    :cond_25
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_2c

    .line 758
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    .line 760
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1f

    .line 764
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_2b

    .line 766
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    goto/16 :goto_c

    .line 738
    :cond_26
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-gt v12, v0, :cond_28

    .line 739
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v12, v0, :cond_27

    .line 740
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 736
    :cond_27
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 743
    :cond_28
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_10

    .line 750
    :cond_29
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v12, v0, :cond_2a

    .line 751
    move v13, v4

    .line 748
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 768
    :cond_2b
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_c

    .line 773
    :cond_2c
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_c

    .line 780
    .end local v12    # "leastValueSearch":I
    .end local v13    # "leastValueSearchIndex":I
    .end local v29    # "tempTwoSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v15, v0, :cond_35

    .line 781
    const/16 v36, 0x1

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 782
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 783
    const/16 v36, 0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 784
    add-int/lit8 v36, v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 814
    :cond_2e
    :goto_11
    sput v7, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 787
    :cond_2f
    const/4 v4, 0x0

    :goto_12
    add-int/lit8 v36, v23, -0x1

    move/from16 v0, v36

    if-gt v4, v0, :cond_30

    .line 788
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 787
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 792
    :cond_30
    const/16 v30, 0x0

    .line 793
    .local v30, "tempValue":I
    const/16 v36, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 795
    const/4 v4, 0x0

    :goto_13
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_31

    .line 796
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_32

    .line 807
    :cond_31
    const/4 v4, 0x0

    :goto_14
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_2e

    .line 808
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_34

    .line 809
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 810
    goto/16 :goto_11

    .line 799
    :cond_32
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v30

    move/from16 v1, v36

    if-gt v0, v1, :cond_33

    .line 795
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 802
    :cond_33
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto :goto_15

    .line 807
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 816
    .end local v30    # "tempValue":I
    :cond_35
    const/16 v36, 0x1

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_3a

    .line 817
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 818
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 824
    if-nez v11, :cond_37

    .line 827
    const-string v36, "WifiBestChannel"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "freeBestZeroSpacingChannel : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_36
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 830
    :cond_37
    const/16 v36, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 832
    .local v3, "checkLeast":I
    const/4 v4, 0x0

    :goto_16
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_36

    .line 833
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_36

    .line 834
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-gt v3, v0, :cond_39

    .line 835
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v3, v0, :cond_38

    .line 836
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 837
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 832
    :cond_38
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 840
    :cond_39
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 841
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_17

    .line 851
    .end local v3    # "checkLeast":I
    :cond_3a
    const/16 v36, 0xc8

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5
.end method

.method private static computeChannelforFiveGhzLowerband()I
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/16 v9, 0x11

    const/16 v8, 0xf

    const/16 v7, 0x12

    const/16 v6, 0x10

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "bestChannelInThisband":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 347
    const/4 v3, 0x0

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    .line 348
    const/16 v0, 0x30

    .line 349
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 427
    :goto_0
    return v0

    .line 350
    :cond_0
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 351
    const/16 v0, 0x30

    .line 352
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    .line 353
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_0

    .line 354
    :cond_1
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 355
    const/16 v0, 0x28

    .line 356
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    .line 357
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_0

    .line 359
    :cond_2
    const/4 v1, 0x0

    .line 360
    .local v1, "totalNumApHigher5Ghz":I
    const/4 v2, 0x0

    .line 361
    .local v2, "totalNumApLower5Ghz":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v1, v4, v3

    .line 362
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v2, v4, v3

    .line 364
    if-ge v1, v2, :cond_4

    .line 365
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_3

    .line 366
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 367
    const/16 v0, 0x30

    .line 372
    :goto_1
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 369
    :cond_3
    const/16 v3, 0x2c

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 370
    const/16 v0, 0x2c

    goto :goto_1

    .line 373
    :cond_4
    if-ge v2, v1, :cond_6

    .line 374
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_5

    .line 375
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 376
    const/16 v0, 0x28

    .line 381
    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 378
    :cond_5
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 379
    const/16 v0, 0x24

    goto :goto_2

    .line 383
    :cond_6
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_b

    .line 385
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_8

    .line 386
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 387
    const/16 v0, 0x30

    .line 393
    :goto_3
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    .line 394
    :cond_7
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    .line 395
    const/16 v0, 0x30

    .line 399
    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 389
    :cond_8
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 390
    const/16 v0, 0x28

    goto :goto_3

    .line 397
    :cond_9
    const/16 v0, 0x28

    goto :goto_4

    .line 401
    :cond_a
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 404
    :cond_b
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_d

    .line 405
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 406
    const/16 v0, 0x28

    .line 412
    :goto_5
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_f

    .line 413
    :cond_c
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    .line 414
    const/16 v0, 0x28

    .line 415
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 420
    :goto_6
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 408
    :cond_d
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 409
    const/16 v0, 0x24

    goto :goto_5

    .line 417
    :cond_e
    const/16 v0, 0x24

    .line 418
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_6

    .line 422
    :cond_f
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0
.end method

.method public static computeChannelforFiveGhzUpperband()I
    .locals 11

    .prologue
    const/16 v10, 0xa1

    const/16 v9, 0x15

    const/16 v8, 0x13

    const/16 v7, 0x16

    const/16 v6, 0x14

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "bestChannelInThisband":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 256
    const/16 v0, 0xa1

    .line 257
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 258
    const/4 v3, 0x0

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    .line 340
    :goto_0
    return v0

    .line 259
    :cond_0
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 260
    const/16 v0, 0xa1

    .line 261
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 262
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto :goto_0

    .line 263
    :cond_1
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 264
    const/16 v0, 0x99

    .line 265
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 266
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto :goto_0

    .line 268
    :cond_2
    const/4 v1, 0x0

    .line 269
    .local v1, "totalNumApHigher5Ghz":I
    const/4 v2, 0x0

    .line 271
    .local v2, "totalNumApLower5Ghz":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v1, v4, v3

    .line 272
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v2, v4, v3

    .line 274
    if-ge v1, v2, :cond_4

    .line 275
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_3

    .line 276
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 277
    const/16 v0, 0xa1

    .line 282
    :goto_1
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 279
    :cond_3
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 280
    const/16 v0, 0x9d

    goto :goto_1

    .line 283
    :cond_4
    if-ge v2, v1, :cond_6

    .line 284
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_5

    .line 285
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 286
    const/16 v0, 0x99

    .line 291
    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 288
    :cond_5
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 289
    const/16 v0, 0x95

    goto :goto_2

    .line 293
    :cond_6
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_b

    .line 295
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_8

    .line 296
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 297
    const/16 v0, 0xa1

    .line 303
    :goto_3
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    .line 304
    :cond_7
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    .line 305
    const/16 v0, 0xa1

    .line 306
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 311
    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 299
    :cond_8
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 300
    const/16 v0, 0x9d

    goto :goto_3

    .line 308
    :cond_9
    const/16 v0, 0x9d

    .line 309
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    goto :goto_4

    .line 313
    :cond_a
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 316
    :cond_b
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_d

    .line 317
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 318
    const/16 v0, 0x99

    .line 324
    :goto_5
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_f

    .line 325
    :cond_c
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    .line 326
    const/16 v0, 0x99

    .line 327
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 332
    :goto_6
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 320
    :cond_d
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 321
    const/16 v0, 0x95

    goto :goto_5

    .line 329
    :cond_e
    const/16 v0, 0x95

    .line 330
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    goto :goto_6

    .line 334
    :cond_f
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0
.end method

.method private static fillNumberOfApOnSpecificChannel(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "channel"    # I
    .param p3, "rssi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "arrayListnumOfAPonChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, "arrayListRssiLoadOfAP":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, p3, 0x64

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public static getBestChannelofFiveGhz()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 210
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeChannelforFiveGhzUpperband()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    .line 211
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeChannelforFiveGhzLowerband()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    .line 213
    const/4 v0, 0x0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    .line 214
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-nez v0, :cond_0

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-nez v0, :cond_0

    .line 216
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    .line 246
    :goto_0
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    return v0

    .line 217
    :cond_0
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-nez v0, :cond_1

    .line 218
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 219
    :cond_1
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-nez v0, :cond_2

    .line 220
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 221
    :cond_2
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v1, :cond_3

    .line 222
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 224
    :cond_3
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v1, :cond_4

    .line 225
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 226
    :cond_4
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v1, :cond_5

    .line 227
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 228
    :cond_5
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v2, :cond_6

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v2, :cond_6

    .line 229
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 231
    :cond_6
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v2, :cond_7

    .line 232
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 233
    :cond_7
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v2, :cond_8

    .line 234
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 235
    :cond_8
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v3, :cond_9

    .line 236
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 238
    :cond_9
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v3, :cond_a

    .line 239
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 240
    :cond_a
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v3, :cond_b

    .line 241
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 243
    :cond_b
    const/16 v0, 0xc8

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0
.end method

.method private static getChannelFromFrequency(I)I
    .locals 2
    .param p0, "frequency"    # I

    .prologue
    .line 108
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->channelsFrequency:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 865
    :cond_0
    const-string v0, "WifiBestChannel"

    const-string v1, "onDestroy caleld "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;-><init>(Lcom/motorola/android/wifi/WifiBestChannel;Lcom/motorola/android/wifi/WifiBestChannel$1;)V

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    return-void
.end method
