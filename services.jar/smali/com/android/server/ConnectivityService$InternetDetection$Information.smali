.class Lcom/android/server/ConnectivityService$InternetDetection$Information;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$InternetDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Information"
.end annotation


# instance fields
.field mIsInternal:Z

.field mNetInfo:Landroid/net/NetworkInfo;

.field mSeq:I

.field mThread:Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

.field final synthetic this$1:Lcom/android/server/ConnectivityService$InternetDetection;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$InternetDetection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6128
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mSeq:I

    .line 6130
    iput-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mNetInfo:Landroid/net/NetworkInfo;

    .line 6131
    iput-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mThread:Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    .line 6132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mIsInternal:Z

    return-void
.end method
