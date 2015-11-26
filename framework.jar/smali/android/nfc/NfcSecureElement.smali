.class public final Landroid/nfc/NfcSecureElement;
.super Ljava/lang/Object;
.source "NfcSecureElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcSecureElement"


# instance fields
.field private mService:Landroid/nfc/INfcSecureElement;


# direct methods
.method public constructor <init>(Landroid/nfc/INfcSecureElement;)V
    .locals 0
    .param p1, "mSecureElementService"    # Landroid/nfc/INfcSecureElement;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    .line 40
    return-void
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 4
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElement;->closeSecureElementConnection(I)I

    move-result v1

    .line 101
    .local v1, "status":I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error during the conection close"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in closeSecureElement(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in closeSecureElement()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "status":I
    :cond_0
    return-void
.end method

.method public exchangeAPDU(I[B)[B
    .locals 4
    .param p1, "handle"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1, p2}, Landroid/nfc/INfcSecureElement;->exchangeAPDU(I[B)[B

    move-result-object v1

    .line 82
    .local v1, "response":[B
    if-nez v1, :cond_0

    .line 83
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Exchange APDU failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "response":[B
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in exchangeAPDU(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in exchangeAPDU()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "response":[B
    :cond_0
    return-object v1
.end method

.method public getSecureElementTechList(I)[I
    .locals 3
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v1, p1}, Landroid/nfc/INfcSecureElement;->getSecureElementTechList(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcSecureElement"

    const-string v2, "RemoteException in getSecureElementTechList(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v1, Ljava/io/IOException;

    const-string v2, "RemoteException in getSecureElementTechList()"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSecureElementUid(I)[B
    .locals 4
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "uid":[B
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2, p1}, Landroid/nfc/INfcSecureElement;->getSecureElementUid(I)[B

    move-result-object v1

    .line 136
    if-nez v1, :cond_0

    .line 137
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Get Secure Element UID failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in getSecureElementUid(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getSecureElementUid()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 4
    .param p1, "seType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v2, "com.mot.smart_mx.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcSecureElement;->mService:Landroid/nfc/INfcSecureElement;

    invoke-interface {v2}, Landroid/nfc/INfcSecureElement;->openSecureElementConnection()I

    move-result v1

    .line 54
    .local v1, "handle":I
    if-eqz v1, :cond_0

    .line 55
    return v1

    .line 57
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "SmartMX connection not allowed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "handle":I
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcSecureElement"

    const-string v3, "RemoteException in openSecureElementConnection(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in openSecureElementConnection()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v2, "com.mot.uicc.ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    new-instance v2, Ljava/io/IOException;

    const-string v3, "UICC connection not supported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unknown Secure Element type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
