.class Lcom/android/server/TelephonyRegistry$DataStateNotification;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataStateNotification"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field public isDataConnectivityPossible:Z

.field public linkCapabilities:Landroid/net/LinkCapabilities;

.field public linkProperties:Landroid/net/LinkProperties;

.field public networkType:I

.field public reason:Ljava/lang/String;

.field public roaming:Z

.field public state:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-direct/range {p0 .. p8}, Lcom/android/server/TelephonyRegistry$DataStateNotification;->setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 105
    return-void
.end method

.method private setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->state:I

    .line 127
    iput-boolean p2, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->isDataConnectivityPossible:Z

    .line 128
    iput-object p3, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->reason:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->apn:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->linkProperties:Landroid/net/LinkProperties;

    .line 131
    iput-object p6, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->linkCapabilities:Landroid/net/LinkCapabilities;

    .line 132
    iput p7, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->networkType:I

    .line 133
    iput-boolean p8, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->roaming:Z

    .line 134
    return-void
.end method


# virtual methods
.method public checkAndUpdateValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "isDataConnectivityPossible"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "linkCapabilities"    # Landroid/net/LinkCapabilities;
    .param p7, "networkType"    # I
    .param p8, "roaming"    # Z

    .prologue
    .line 111
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->isDataConnectivityPossible:Z

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/TelephonyRegistry$DataStateNotification;->state:I

    if-ne p1, v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/android/server/TelephonyRegistry$DataStateNotification;->setValues(IZLjava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method
