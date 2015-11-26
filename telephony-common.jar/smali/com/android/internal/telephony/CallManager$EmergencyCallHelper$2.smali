.class Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)V
    .locals 0

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2418
    const-string v2, "CallManager"

    const-string v3, "EmergencyCallHelper.handleMessage E"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    # invokes: Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isInEmergencyCall()Z
    invoke-static {v2}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->access$500(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z

    move-result v1

    .line 2420
    .local v1, "emergency":Z
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    # invokes: Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->isInECM()Z
    invoke-static {v2}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->access$300(Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;)Z

    move-result v0

    .line 2421
    .local v0, "ecm":Z
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EmergencyCallHelper.handleMessage: emergency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ecm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 2423
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper$2;->this$1:Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager$EmergencyCallHelper;->onExitECM()V

    .line 2425
    :cond_0
    const-string v2, "CallManager"

    const-string v3, "EmergencyCallHelper.handleMessage X"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    return-void
.end method
