.class Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/OperatorEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperatorInfo"
.end annotation


# instance fields
.field public mOperatorName:Ljava/lang/String;

.field public mOperatorNumerics:[Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/OperatorEntryManager;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/OperatorEntryManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "operatorName"    # Ljava/lang/String;
    .param p3, "operatorNumerics"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 39
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->this$0:Lcom/motorola/android/internal/telephony/OperatorEntryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->mOperatorNumerics:[Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 41
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->mOperatorNumerics:[Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getOperatorNumericArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/OperatorEntryManager$OperatorInfo;->mOperatorNumerics:[Ljava/lang/String;

    return-object v0
.end method
