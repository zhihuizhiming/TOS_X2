.class Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$InternetDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetectionResult"
.end annotation


# instance fields
.field location:Ljava/lang/String;

.field result:I

.field final synthetic this$1:Lcom/android/server/ConnectivityService$InternetDetection;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$InternetDetection;)V
    .locals 1

    .prologue
    .line 6016
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6014
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    .line 6015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->location:Ljava/lang/String;

    .line 6016
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService$InternetDetection;I)V
    .locals 1
    .param p2, "result"    # I

    .prologue
    .line 6017
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6014
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    .line 6015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->location:Ljava/lang/String;

    .line 6018
    iput p2, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    .line 6019
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6021
    iget v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 6022
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(loc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6025
    :cond_0
    return-object v0
.end method
