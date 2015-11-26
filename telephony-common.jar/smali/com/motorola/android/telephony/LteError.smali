.class public Lcom/motorola/android/telephony/LteError;
.super Ljava/lang/Object;
.source "LteError.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LteError"


# instance fields
.field private apnName:Ljava/lang/String;

.field private apnValid:Z

.field private error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "apnName"    # Ljava/lang/String;
    .param p3, "apnValid"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/motorola/android/telephony/LteError;->error:I

    .line 25
    iput-object p2, p0, Lcom/motorola/android/telephony/LteError;->apnName:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/motorola/android/telephony/LteError;->apnValid:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/telephony/LteError;)V
    .locals 1
    .param p1, "lteError"    # Lcom/motorola/android/telephony/LteError;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/motorola/android/telephony/LteError;->getError()I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/LteError;->error:I

    .line 31
    invoke-virtual {p1}, Lcom/motorola/android/telephony/LteError;->getApnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/LteError;->apnName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/motorola/android/telephony/LteError;->isApnValid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/android/telephony/LteError;->apnValid:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getApnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/android/telephony/LteError;->apnName:Ljava/lang/String;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/motorola/android/telephony/LteError;->error:I

    return v0
.end method

.method public isApnValid()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/motorola/android/telephony/LteError;->apnValid:Z

    return v0
.end method
