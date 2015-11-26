.class Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;
.super Ljava/lang/Thread;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/SUPForAssistedDialing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotoSettingUpdater"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/motorola/android/telephony/SUPForAssistedDialing;


# direct methods
.method private constructor <init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->this$0:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/SUPForAssistedDialing$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/telephony/SUPForAssistedDialing;
    .param p2, "x1"    # Lcom/motorola/android/telephony/SUPForAssistedDialing$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 75
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 46
    new-instance v0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater$1;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 65
    return-void
.end method

.method public update(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/motorola/android/telephony/MCCEntry;

    .prologue
    const/4 v2, 0x1

    .line 68
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method
