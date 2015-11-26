.class public abstract Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;
.super Landroid/os/Binder;
.source "IWirelessDisplay.java"

# interfaces
.implements Lcom/motorola/wirelessdisplay/service/IWirelessDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/wirelessdisplay/service/IWirelessDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.wirelessdisplay.service.IWirelessDisplay"

.field static final TRANSACTION_controlMirroringPlayback:I = 0x12

.field static final TRANSACTION_disconnectWfdDevice:I = 0xd

.field static final TRANSACTION_forceSccMode:I = 0xe

.field static final TRANSACTION_getAutoConnect:I = 0x3

.field static final TRANSACTION_getMirroringDevice:I = 0xc

.field static final TRANSACTION_getWirelessDisplayMirroringState:I = 0x5

.field static final TRANSACTION_getWirelessDisplayState:I = 0x1

.field static final TRANSACTION_handleP2pConnectionChange:I = 0x9

.field static final TRANSACTION_handleP2pStateChange:I = 0x7

.field static final TRANSACTION_handleP2pThisDeviceChange:I = 0x8

.field static final TRANSACTION_handleWifiConnectionChange:I = 0x6

.field static final TRANSACTION_removeAutoConnectMac:I = 0x10

.field static final TRANSACTION_requestGroupInfo:I = 0x11

.field static final TRANSACTION_scanResultsAvailable:I = 0x13

.field static final TRANSACTION_setAutoConnect:I = 0x4

.field static final TRANSACTION_setScreenState:I = 0xf

.field static final TRANSACTION_setWirelessDisplayEnabled:I = 0x2

.field static final TRANSACTION_startMirroring:I = 0xa

.field static final TRANSACTION_stopMirroring:I = 0xb

.field static final TRANSACTION_teardownCallbackIntent:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/wirelessdisplay/service/IWirelessDisplay;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->getWirelessDisplayState()I

    move-result v2

    .line 49
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v2    # "_result":I
    :sswitch_2
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 58
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->setWirelessDisplayEnabled(Z)Z

    move-result v2

    .line 59
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_1
    move v0, v4

    .line 57
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->getAutoConnect()Z

    move-result v2

    .line 67
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 76
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->setAutoConnect(Z)Z

    move-result v2

    .line 77
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_result":Z
    :cond_4
    move v0, v4

    .line 75
    goto :goto_2

    .line 83
    :sswitch_5
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->getWirelessDisplayMirroringState()I

    move-result v2

    .line 85
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 91
    .end local v2    # "_result":I
    :sswitch_6
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    sget-object v4, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 99
    .local v0, "_arg0":Landroid/net/NetworkInfo;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->handleWifiConnectionChange(Landroid/net/NetworkInfo;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 97
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_3

    .line 105
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->handleP2pStateChange(I)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 117
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 122
    .local v0, "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->handleP2pThisDeviceChange(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    .end local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_4

    .line 128
    .end local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_9
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 131
    sget-object v4, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 137
    .local v0, "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 138
    sget-object v4, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 143
    .local v1, "_arg1":Landroid/net/NetworkInfo;
    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->handleP2pConnectionChange(Landroid/net/wifi/p2p/WifiP2pInfo;Landroid/net/NetworkInfo;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    .end local v1    # "_arg1":Landroid/net/NetworkInfo;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    goto :goto_5

    .line 141
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/net/NetworkInfo;
    goto :goto_6

    .line 149
    .end local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pInfo;
    .end local v1    # "_arg1":Landroid/net/NetworkInfo;
    :sswitch_a
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 152
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 158
    .local v0, "_arg0":Landroid/net/wifi/p2p/WifiP2pConfig;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 159
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 164
    .local v1, "_arg1":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->startMirroring(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    .line 165
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v2, :cond_9

    move v4, v3

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "_arg1":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "_result":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pConfig;
    goto :goto_7

    .line 162
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_8

    .line 171
    .end local v0    # "_arg0":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1    # "_arg1":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_b
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->stopMirroring()Z

    move-result v2

    .line 173
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v2, :cond_c

    move v4, v3

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v2    # "_result":Z
    :sswitch_c
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->getMirroringDevice()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    .line 181
    .local v2, "_result":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v2, :cond_d

    .line 183
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v2, p3, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 187
    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v2    # "_result":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_d
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    move v0, v3

    .line 197
    .local v0, "_arg0":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->disconnectWfdDevice(ZLjava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :cond_e
    move v0, v4

    .line 195
    goto :goto_9

    .line 204
    :sswitch_e
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->forceSccMode()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    :sswitch_f
    const-string v5, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    move v0, v3

    .line 214
    .restart local v0    # "_arg0":Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->setScreenState(Z)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_f
    move v0, v4

    .line 213
    goto :goto_a

    .line 220
    :sswitch_10
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->removeAutoConnectMac(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_11
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->requestGroupInfo()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    :sswitch_12
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->controlMirroringPlayback()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 243
    :sswitch_13
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->scanResultsAvailable()V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    :sswitch_14
    const-string v4, "com.motorola.wirelessdisplay.service.IWirelessDisplay"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/motorola/wirelessdisplay/service/IWirelessDisplay$Stub;->teardownCallbackIntent()V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
