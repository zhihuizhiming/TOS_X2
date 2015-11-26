.class Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;
.super Ljava/lang/Object;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResponseHeader"
.end annotation


# static fields
.field static final ERROR_CODE_FILE_NOT_AVAILABLE_V01:I = 0x2

.field static final ERROR_CODE_IMS_NOT_READY_V01:I = 0x1

.field static final ERROR_CODE_NO_ERR_V01:I = 0x0

.field static final ERROR_CODE_OTHER_INTERNAL_ERR_V01:I = 0x5

.field static final ERROR_CODE_READ_FAILED_V01:I = 0x3

.field static final ERROR_CODE_WRITE_FAILED_V01:I = 0x4

.field private static final RESULT_TYPE_FAILURE:I = 0x1

.field private static final RESULT_TYPE_SUCCESS:I


# instance fields
.field mErrorType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mResultType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mSettingRsp:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

.field mSettingRspValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 3

    .prologue
    .line 649
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mResultType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 661
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mErrorType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    .line 662
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;I)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mSettingRspValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    .line 663
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mSettingRsp:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    return-void
.end method


# virtual methods
.method get(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 666
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 667
    .local v0, "ret":Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mResultType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 668
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mErrorType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 669
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mSettingRspValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 670
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mSettingRsp:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->get(Ljava/nio/ByteBuffer;)V

    .line 671
    return-object v0
.end method

.method isSuccess()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mResultType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseHeader [mResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mResultType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mErrorType:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSettingRspValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mSettingRspValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSettingRsp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->mSettingRsp:Lcom/motorola/android/internal/telephony/ImsSetting$IntValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
