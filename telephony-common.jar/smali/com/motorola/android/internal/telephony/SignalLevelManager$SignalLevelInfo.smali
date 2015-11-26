.class Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;
.super Ljava/lang/Object;
.source "SignalLevelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/SignalLevelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalLevelInfo"
.end annotation


# instance fields
.field public mAsuLevel:[I

.field public mEcSnrLevel:[I

.field public mSigStrLevel:[I

.field public mSignalBars:I

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/SignalLevelManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "signalBars"    # I
    .param p3, "asuLevel"    # Ljava/lang/String;
    .param p4, "sigStrLevel"    # Ljava/lang/String;
    .param p5, "ecSnrLevel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->this$0:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    .line 66
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    .line 67
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    .line 71
    iput p2, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSignalBars:I

    .line 72
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    invoke-static {p2, p3}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mAsuLevel:[I

    .line 75
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    invoke-static {p2, p4}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mSigStrLevel:[I

    .line 78
    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    invoke-static {p2, p5}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->parseSignalLevelString(ILjava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/SignalLevelManager$SignalLevelInfo;->mEcSnrLevel:[I

    .line 81
    :cond_2
    return-void
.end method
