.class public Lcom/motorola/android/internal/telephony/ApnInfo;
.super Ljava/lang/Object;
.source "ApnInfo.java"


# static fields
.field public static final BP_PREFERRED_APN_INDEX:I = 0x1

.field public static final PROFILE_TYPE_3GPP:I = 0x0

.field public static final PROFILE_TYPE_3GPP2:I = 0x1


# instance fields
.field public apn:Ljava/lang/String;

.field public apn_class:I

.field public auth_type:I

.field public enabled:Z

.field public inactivity_timeout:I

.field public index:I

.field public ip_type:I

.field public max_conn:I

.field public max_conn_t:I

.field public password:Ljava/lang/String;

.field public rat_type:I

.field public type:I

.field public username:Ljava/lang/String;

.field public wait_time:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->type:I

    .line 63
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    .line 64
    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    .line 65
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    .line 66
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    .line 67
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    .line 68
    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->inactivity_timeout:I

    .line 69
    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    .line 70
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    .line 74
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    .line 75
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    .line 76
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    .line 78
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZIILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "t"    # I
    .param p2, "i"    # I
    .param p3, "c"    # I
    .param p4, "a"    # Ljava/lang/String;
    .param p5, "ipt"    # I
    .param p6, "en"    # Z
    .param p7, "inact"    # I
    .param p8, "au"    # I
    .param p9, "u"    # Ljava/lang/String;
    .param p10, "p"    # Ljava/lang/String;
    .param p11, "r"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->type:I

    .line 44
    iput p2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    .line 45
    iput p3, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    .line 46
    iput-object p4, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    .line 48
    iput-boolean p6, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    .line 49
    iput p7, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->inactivity_timeout:I

    .line 50
    iput p8, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    .line 51
    iput-object p9, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    .line 52
    iput-object p10, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    .line 53
    iput p11, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    .line 55
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    .line 56
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    .line 57
    iput v0, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ApnInfo] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn_class:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->ip_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->inactivity_timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->auth_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->rat_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->max_conn_t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/ApnInfo;->wait_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
