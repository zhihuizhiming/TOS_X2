.class Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;
.super Ljava/lang/Object;
.source "ImsSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ImsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetResponse"
.end annotation


# instance fields
.field mConfig:Lcom/motorola/android/internal/telephony/ImsSetting$Config;

.field mHeader:Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ImsSetting;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ImsSetting;Lcom/motorola/android/internal/telephony/ImsSetting$Config;)V
    .locals 2
    .param p2, "t"    # Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v0, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->this$0:Lcom/motorola/android/internal/telephony/ImsSetting;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;-><init>(Lcom/motorola/android/internal/telephony/ImsSetting;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mHeader:Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    .line 693
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mConfig:Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    .line 694
    return-void
.end method


# virtual methods
.method populate(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mHeader:Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;->get(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    .line 698
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mConfig:Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ImsSetting$Config;->populate(Ljava/nio/ByteBuffer;)V

    .line 699
    const-string v0, "IMS_SETTING"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetResponse::populate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetResponse [mHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mHeader:Lcom/motorola/android/internal/telephony/ImsSetting$ResponseHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ImsSetting$GetResponse;->mConfig:Lcom/motorola/android/internal/telephony/ImsSetting$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
