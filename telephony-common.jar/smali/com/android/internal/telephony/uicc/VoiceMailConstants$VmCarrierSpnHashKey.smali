.class Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/VoiceMailConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VmCarrierSpnHashKey"
.end annotation


# instance fields
.field protected mvno_match_data:Ljava/lang/String;

.field protected mvno_type:Ljava/lang/String;

.field protected numeric:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/VoiceMailConstants;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/VoiceMailConstants;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->this$0:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object2"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;

    .end local p1    # "object2":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_2
    add-int/2addr v0, v2

    .line 69
    return v0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->numeric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants$VmCarrierSpnHashKey;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method
