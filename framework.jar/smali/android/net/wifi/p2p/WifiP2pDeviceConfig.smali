.class public Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
.super Ljava/lang/Object;
.source "WifiP2pDeviceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDeviceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final P2P_AGO_INACTIVITY_TIME_DEFAULT_VALUE:I = -0x1

.field public static final P2P_AGO_MAX_CONNECTED_DEVICES_DEFAULT_VALUE:I = 0x8

.field public static final P2P_AGO_OPERATION_BAND_DEFAULT_VALUE:I = 0x2

.field public static final PREFERRED_P2P_CONFIGURATION:Ljava/lang/String; = "preferred_p2p_configuration"


# instance fields
.field public deviceBand:I

.field public deviceLimit:I

.field public deviceName:Ljava/lang/String;

.field public deviceTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 43
    const/16 v0, 0x8

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDeviceConfig;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    .line 65
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 66
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    .line 67
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "\n deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "\n deviceBand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "\n deviceLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "\n deviceTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
