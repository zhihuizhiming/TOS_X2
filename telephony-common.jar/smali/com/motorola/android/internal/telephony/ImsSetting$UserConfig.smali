.class Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;
.super Lcom/motorola/android/internal/telephony/ImsSetting$Config;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserConfig"
.end annotation


# instance fields
.field mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

.field mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V
    .locals 2

    .prologue
    .line 610
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$Config;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    .line 611
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    .line 612
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .prologue
    .line 616
    const/16 v0, 0x101

    return v0
.end method

.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->get(Ljava/nio/ByteBuffer;)V

    .line 627
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->get(Ljava/nio/ByteBuffer;)V

    .line 628
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserConfig::populate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void
.end method

.method put(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 620
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserConfig::put: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;->put(Ljava/nio/ByteBuffer;)V

    .line 622
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;->put(Ljava/nio/ByteBuffer;)V

    .line 623
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserConfig [mDomainValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomainValid:Lcom/motorola/android/internal/telephony/ImsSetting$ValidValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$UserConfig;->mDomain:Lcom/motorola/android/internal/telephony/ImsSetting$StringValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
